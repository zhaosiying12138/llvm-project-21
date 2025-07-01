//===-- Implementation header of spike_printf ------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIBC_SRC_STDIO_SPIKE_PRINTF_H
#define LLVM_LIBC_SRC_STDIO_SPIKE_PRINTF_H

namespace LIBC_NAMESPACE {

int spike_printf(const char *__restrict format, ...);

} // namespace LIBC_NAMESPACE

#endif // LLVM_LIBC_SRC_STDIO_SPIKE_PRINTF_H
