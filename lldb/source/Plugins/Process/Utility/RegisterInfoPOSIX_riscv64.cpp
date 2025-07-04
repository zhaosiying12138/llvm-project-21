//===-- RegisterInfoPOSIX_riscv64.cpp -------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===---------------------------------------------------------------------===//

#include <cassert>
#include <lldb/Utility/Flags.h>
#include <stddef.h>

#include "lldb/lldb-defines.h"
#include "llvm/Support/Compiler.h"

#include "RegisterInfoPOSIX_riscv64.h"

#define GPR_OFFSET(idx) ((idx)*8 + 0)
#define FPR_OFFSET(idx) ((idx)*8 + sizeof(RegisterInfoPOSIX_riscv64::GPR))

#define REG_CONTEXT_SIZE                                                       \
  (sizeof(RegisterInfoPOSIX_riscv64::GPR) +                                    \
   sizeof(RegisterInfoPOSIX_riscv64::FPR))

#define DECLARE_REGISTER_INFOS_RISCV64_STRUCT
#include "RegisterInfos_riscv64.h"
#undef DECLARE_REGISTER_INFOS_RISCV64_STRUCT

const lldb_private::RegisterInfo *RegisterInfoPOSIX_riscv64::GetRegisterInfoPtr(
    const lldb_private::ArchSpec &target_arch) {
  switch (target_arch.GetMachine()) {
  case llvm::Triple::riscv64:
    return g_register_infos_riscv64_le;
  default:
    assert(false && "Unhandled target architecture.");
    return nullptr;
  }
}

uint32_t RegisterInfoPOSIX_riscv64::GetRegisterInfoCount(
    const lldb_private::ArchSpec &target_arch) {
  switch (target_arch.GetMachine()) {
  case llvm::Triple::riscv64:
    return static_cast<uint32_t>(sizeof(g_register_infos_riscv64_le) /
                                 sizeof(g_register_infos_riscv64_le[0]));
  default:
    assert(false && "Unhandled target architecture.");
    return 0;
  }
}

// Number of register sets provided by this context.
enum {
  k_num_gpr_registers = gpr_last_riscv - gpr_first_riscv + 1,
  k_num_fpr_registers = fpr_last_riscv - fpr_first_riscv + 1,
  k_num_vpr_registers = vpr_last_riscv - vpr_first_riscv + 1,
  k_num_register_sets = 3
};

// RISC-V64 general purpose registers.
static const uint32_t g_gpr_regnums_riscv64[] = {
    gpr_pc_riscv,  gpr_ra_riscv,       gpr_sp_riscv,  gpr_x3_riscv,
    gpr_x4_riscv,  gpr_x5_riscv,       gpr_x6_riscv,  gpr_x7_riscv,
    gpr_fp_riscv,  gpr_x9_riscv,       gpr_x10_riscv, gpr_x11_riscv,
    gpr_x12_riscv, gpr_x13_riscv,      gpr_x14_riscv, gpr_x15_riscv,
    gpr_x16_riscv, gpr_x17_riscv,      gpr_x18_riscv, gpr_x19_riscv,
    gpr_x20_riscv, gpr_x21_riscv,      gpr_x22_riscv, gpr_x23_riscv,
    gpr_x24_riscv, gpr_x25_riscv,      gpr_x26_riscv, gpr_x27_riscv,
    gpr_x28_riscv, gpr_x29_riscv,      gpr_x30_riscv, gpr_x31_riscv,
    gpr_x0_riscv,  LLDB_INVALID_REGNUM};

static_assert(((sizeof g_gpr_regnums_riscv64 /
                sizeof g_gpr_regnums_riscv64[0]) -
               1) == k_num_gpr_registers,
              "g_gpr_regnums_riscv64 has wrong number of register infos");

// RISC-V64 floating point registers.
static const uint32_t g_fpr_regnums_riscv64[] = {
    fpr_f0_riscv,   fpr_f1_riscv,       fpr_f2_riscv,  fpr_f3_riscv,
    fpr_f4_riscv,   fpr_f5_riscv,       fpr_f6_riscv,  fpr_f7_riscv,
    fpr_f8_riscv,   fpr_f9_riscv,       fpr_f10_riscv, fpr_f11_riscv,
    fpr_f12_riscv,  fpr_f13_riscv,      fpr_f14_riscv, fpr_f15_riscv,
    fpr_f16_riscv,  fpr_f17_riscv,      fpr_f18_riscv, fpr_f19_riscv,
    fpr_f20_riscv,  fpr_f21_riscv,      fpr_f22_riscv, fpr_f23_riscv,
    fpr_f24_riscv,  fpr_f25_riscv,      fpr_f26_riscv, fpr_f27_riscv,
    fpr_f28_riscv,  fpr_f29_riscv,      fpr_f30_riscv, fpr_f31_riscv,
    fpr_fcsr_riscv, LLDB_INVALID_REGNUM};

static_assert(((sizeof g_fpr_regnums_riscv64 /
                sizeof g_fpr_regnums_riscv64[0]) -
               1) == k_num_fpr_registers,
              "g_fpr_regnums_riscv64 has wrong number of register infos");

// RISC-V64 floating point registers.
static const uint32_t g_vpr_regnums_riscv64[] = {
  vpr_v0_riscv,   vpr_v1_riscv,       vpr_v2_riscv,   vpr_v3_riscv,
  vpr_v4_riscv,   vpr_v5_riscv,       vpr_v6_riscv,   vpr_v7_riscv,
  vpr_v8_riscv,   vpr_v9_riscv,      vpr_v10_riscv,  vpr_v11_riscv,
  vpr_v12_riscv,  vpr_v13_riscv,   vpr_v14_riscv,  vpr_v15_riscv,
  vpr_v16_riscv,  vpr_v17_riscv,   vpr_v18_riscv,  vpr_v19_riscv,
  vpr_v20_riscv,  vpr_v21_riscv,   vpr_v22_riscv,  vpr_v23_riscv,
  vpr_v24_riscv,  vpr_v25_riscv,   vpr_v26_riscv,  vpr_v27_riscv,
  vpr_v28_riscv,  vpr_v29_riscv,   vpr_v30_riscv,  vpr_v31_riscv,
  LLDB_INVALID_REGNUM};

  // TODO static_assert(xxx);

// Register sets for RISC-V64.
static const lldb_private::RegisterSet g_reg_sets_riscv64[k_num_register_sets] =
    {{"General Purpose Registers", "gpr", k_num_gpr_registers,
      g_gpr_regnums_riscv64},
     {"Floating Point Registers", "fpr", k_num_fpr_registers,
      g_fpr_regnums_riscv64},
     {"Vector Registers", "vpr", k_num_vpr_registers,
      g_vpr_regnums_riscv64}
    };

RegisterInfoPOSIX_riscv64::RegisterInfoPOSIX_riscv64(
    const lldb_private::ArchSpec &target_arch, lldb_private::Flags flags)
    : lldb_private::RegisterInfoAndSetInterface(target_arch),
      m_register_info_p(GetRegisterInfoPtr(target_arch)),
      m_register_info_count(GetRegisterInfoCount(target_arch)) {}

uint32_t RegisterInfoPOSIX_riscv64::GetRegisterCount() const {
  return m_register_info_count;
}

size_t RegisterInfoPOSIX_riscv64::GetGPRSize() const {
  return sizeof(struct RegisterInfoPOSIX_riscv64::GPR);
}

size_t RegisterInfoPOSIX_riscv64::GetFPRSize() const {
  return sizeof(struct RegisterInfoPOSIX_riscv64::FPR);
}

size_t RegisterInfoPOSIX_riscv64::GetVPRSize() const {
  return sizeof(struct RegisterInfoPOSIX_riscv64::VPR);
}

const lldb_private::RegisterInfo *
RegisterInfoPOSIX_riscv64::GetRegisterInfo() const {
  return m_register_info_p;
}

size_t RegisterInfoPOSIX_riscv64::GetRegisterSetCount() const {
  return k_num_register_sets;
}

size_t RegisterInfoPOSIX_riscv64::GetRegisterSetFromRegisterIndex(
    uint32_t reg_index) const {
  // coverity[unsigned_compare]
  if (reg_index >= gpr_first_riscv && reg_index <= gpr_last_riscv)
    return GPRegSet;
  if (reg_index >= fpr_first_riscv && reg_index <= fpr_last_riscv)
    return FPRegSet;
  if (reg_index >= vpr_first_riscv && reg_index <= vpr_last_riscv)
    return VPRegSet;
  return LLDB_INVALID_REGNUM;
}

const lldb_private::RegisterSet *
RegisterInfoPOSIX_riscv64::GetRegisterSet(size_t set_index) const {
  if (set_index < GetRegisterSetCount())
    return &g_reg_sets_riscv64[set_index];
  return nullptr;
}
