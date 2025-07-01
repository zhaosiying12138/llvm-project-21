//===-- Implementation of spike_printf -------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "src/stdio/spike_printf.h"

#include "src/__support/CPP/limits.h"
#include "src/__support/arg_list.h"
#include "src/stdio/printf_core/printf_main.h"
#include "src/stdio/printf_core/writer.h"
#include "src/stdio/vsprintf.h"

#include <stdarg.h>

namespace LIBC_NAMESPACE {

__attribute__((section(".data"))) volatile uint8_t* uart16550 = (volatile uint8_t *)0x10000000;
// some devices require a shifted register index
// (e.g. 32 bit registers instead of 8 bit registers)
__attribute__((section(".data"))) static uint32_t uart16550_reg_shift = 0;
//__attribute__((section(".data"))) static uint32_t uart16550_clock = 1843200;

#define UART_REG_QUEUE     0    // rx/tx fifo data
#define UART_REG_DLL       0    // divisor latch (LSB)
#define UART_REG_IER       1    // interrupt enable register
#define UART_REG_DLM       1    // divisor latch (MSB)
#define UART_REG_FCR       2    // fifo control register
#define UART_REG_LCR       3    // line control register
#define UART_REG_MCR       4    // modem control register
#define UART_REG_LSR       5    // line status register
#define UART_REG_MSR       6    // modem status register
#define UART_REG_SCR       7    // scratch register
#define UART_REG_STATUS_RX 0x01
#define UART_REG_STATUS_TX 0x20

// We cannot use the word DEFAULT for a parameter that cannot be overridden due to -Werror
#ifndef UART_DEFAULT_BAUD
#define UART_DEFAULT_BAUD  38400
#endif

static void uart16550_putc(uint8_t ch)
{
  while ((uart16550[UART_REG_LSR << uart16550_reg_shift] & UART_REG_STATUS_TX) == 0);
  uart16550[UART_REG_QUEUE << uart16550_reg_shift] = ch;
}

static void uart16550_puts(const char *s)
{
  while (*s) {
    uart16550_putc(*s++);
  }
}

extern "C" void __llvm_libc_quick_exit(int status) { (void) status; }
extern "C" void __llvm_libc_log_write(const char *msg, size_t len) {
  // spike_printf("[LLVM-LIBC-ERR] ");
  // spike_printf(msg);
  (void) msg;
  (void) len;
}

LLVM_LIBC_FUNCTION(int, spike_printf,
                   (const char *__restrict format,
                    ...)) {
  char print_buf[256];

  va_list vlist;
  va_start(vlist, format);
  internal::ArgList args(vlist); // This holder class allows for easier copying
                                 // and pointer semantics, as well as handling
                                 // destruction automatically.
  va_end(vlist);

  int ret_val = vsprintf(print_buf, format, vlist);

  uart16550_puts(print_buf);
  return ret_val;
}

} // namespace LIBC_NAMESPACE
