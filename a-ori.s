	.text
	.attribute	4, 16
	.attribute	5, "rv32i2p1_m2p0_f2p2_d2p2_v1p0_zicsr2p0_zmmul1p0_zve32f1p0_zve32x1p0_zve64d1p0_zve64f1p0_zve64x1p0_zvl128b1p0_zvl32b1p0_zvl64b1p0"
	.file	"<stdin>"
	.globl	masked_store_v1i8               # -- Begin function masked_store_v1i8
	.p2align	2
	.type	masked_store_v1i8,@function
	.variant_cc	masked_store_v1i8
masked_store_v1i8:                      # @masked_store_v1i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 1, e8, mf8, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end0:
	.size	masked_store_v1i8, .Lfunc_end0-masked_store_v1i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v1i16              # -- Begin function masked_store_v1i16
	.p2align	2
	.type	masked_store_v1i16,@function
	.variant_cc	masked_store_v1i16
masked_store_v1i16:                     # @masked_store_v1i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 1, e16, mf4, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end1:
	.size	masked_store_v1i16, .Lfunc_end1-masked_store_v1i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v1i32              # -- Begin function masked_store_v1i32
	.p2align	2
	.type	masked_store_v1i32,@function
	.variant_cc	masked_store_v1i32
masked_store_v1i32:                     # @masked_store_v1i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 1, e32, mf2, ta, ma
	vse32.v	v8, (a0), v0.t
	ret
.Lfunc_end2:
	.size	masked_store_v1i32, .Lfunc_end2-masked_store_v1i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v1i64              # -- Begin function masked_store_v1i64
	.p2align	2
	.type	masked_store_v1i64,@function
	.variant_cc	masked_store_v1i64
masked_store_v1i64:                     # @masked_store_v1i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 1, e64, m1, ta, ma
	vse64.v	v8, (a0), v0.t
	ret
.Lfunc_end3:
	.size	masked_store_v1i64, .Lfunc_end3-masked_store_v1i64
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v2i8               # -- Begin function masked_store_v2i8
	.p2align	2
	.type	masked_store_v2i8,@function
	.variant_cc	masked_store_v2i8
masked_store_v2i8:                      # @masked_store_v2i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 2, e8, mf8, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end4:
	.size	masked_store_v2i8, .Lfunc_end4-masked_store_v2i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v2i16              # -- Begin function masked_store_v2i16
	.p2align	2
	.type	masked_store_v2i16,@function
	.variant_cc	masked_store_v2i16
masked_store_v2i16:                     # @masked_store_v2i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 2, e16, mf4, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end5:
	.size	masked_store_v2i16, .Lfunc_end5-masked_store_v2i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v2i32              # -- Begin function masked_store_v2i32
	.p2align	2
	.type	masked_store_v2i32,@function
	.variant_cc	masked_store_v2i32
masked_store_v2i32:                     # @masked_store_v2i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 2, e32, mf2, ta, ma
	vse32.v	v8, (a0), v0.t
	ret
.Lfunc_end6:
	.size	masked_store_v2i32, .Lfunc_end6-masked_store_v2i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v2i64              # -- Begin function masked_store_v2i64
	.p2align	2
	.type	masked_store_v2i64,@function
	.variant_cc	masked_store_v2i64
masked_store_v2i64:                     # @masked_store_v2i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 2, e64, m1, ta, ma
	vse64.v	v8, (a0), v0.t
	ret
.Lfunc_end7:
	.size	masked_store_v2i64, .Lfunc_end7-masked_store_v2i64
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v4i8               # -- Begin function masked_store_v4i8
	.p2align	2
	.type	masked_store_v4i8,@function
	.variant_cc	masked_store_v4i8
masked_store_v4i8:                      # @masked_store_v4i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 4, e8, mf4, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end8:
	.size	masked_store_v4i8, .Lfunc_end8-masked_store_v4i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v4i16              # -- Begin function masked_store_v4i16
	.p2align	2
	.type	masked_store_v4i16,@function
	.variant_cc	masked_store_v4i16
masked_store_v4i16:                     # @masked_store_v4i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 4, e16, mf2, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end9:
	.size	masked_store_v4i16, .Lfunc_end9-masked_store_v4i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v4i32              # -- Begin function masked_store_v4i32
	.p2align	2
	.type	masked_store_v4i32,@function
	.variant_cc	masked_store_v4i32
masked_store_v4i32:                     # @masked_store_v4i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 4, e32, m1, ta, ma
	vse32.v	v8, (a0), v0.t
	ret
.Lfunc_end10:
	.size	masked_store_v4i32, .Lfunc_end10-masked_store_v4i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v4i64              # -- Begin function masked_store_v4i64
	.p2align	2
	.type	masked_store_v4i64,@function
	.variant_cc	masked_store_v4i64
masked_store_v4i64:                     # @masked_store_v4i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 4, e64, m2, ta, ma
	vse64.v	v8, (a0), v0.t
	ret
.Lfunc_end11:
	.size	masked_store_v4i64, .Lfunc_end11-masked_store_v4i64
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v8i8               # -- Begin function masked_store_v8i8
	.p2align	2
	.type	masked_store_v8i8,@function
	.variant_cc	masked_store_v8i8
masked_store_v8i8:                      # @masked_store_v8i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e8, mf2, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end12:
	.size	masked_store_v8i8, .Lfunc_end12-masked_store_v8i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v8i16              # -- Begin function masked_store_v8i16
	.p2align	2
	.type	masked_store_v8i16,@function
	.variant_cc	masked_store_v8i16
masked_store_v8i16:                     # @masked_store_v8i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e16, m1, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end13:
	.size	masked_store_v8i16, .Lfunc_end13-masked_store_v8i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v8i32              # -- Begin function masked_store_v8i32
	.p2align	2
	.type	masked_store_v8i32,@function
	.variant_cc	masked_store_v8i32
masked_store_v8i32:                     # @masked_store_v8i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e32, m2, ta, ma
	vse32.v	v8, (a0), v0.t
	ret
.Lfunc_end14:
	.size	masked_store_v8i32, .Lfunc_end14-masked_store_v8i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v8i64              # -- Begin function masked_store_v8i64
	.p2align	2
	.type	masked_store_v8i64,@function
	.variant_cc	masked_store_v8i64
masked_store_v8i64:                     # @masked_store_v8i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 8, e64, m4, ta, ma
	vse64.v	v8, (a0), v0.t
	ret
.Lfunc_end15:
	.size	masked_store_v8i64, .Lfunc_end15-masked_store_v8i64
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v16i8              # -- Begin function masked_store_v16i8
	.p2align	2
	.type	masked_store_v16i8,@function
	.variant_cc	masked_store_v16i8
masked_store_v16i8:                     # @masked_store_v16i8
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e8, m1, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end16:
	.size	masked_store_v16i8, .Lfunc_end16-masked_store_v16i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v16i16             # -- Begin function masked_store_v16i16
	.p2align	2
	.type	masked_store_v16i16,@function
	.variant_cc	masked_store_v16i16
masked_store_v16i16:                    # @masked_store_v16i16
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e16, m2, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end17:
	.size	masked_store_v16i16, .Lfunc_end17-masked_store_v16i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v16i32             # -- Begin function masked_store_v16i32
	.p2align	2
	.type	masked_store_v16i32,@function
	.variant_cc	masked_store_v16i32
masked_store_v16i32:                    # @masked_store_v16i32
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e32, m4, ta, ma
	vse32.v	v8, (a0), v0.t
	ret
.Lfunc_end18:
	.size	masked_store_v16i32, .Lfunc_end18-masked_store_v16i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v16i64             # -- Begin function masked_store_v16i64
	.p2align	2
	.type	masked_store_v16i64,@function
	.variant_cc	masked_store_v16i64
masked_store_v16i64:                    # @masked_store_v16i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e64, m8, ta, ma
	vse64.v	v8, (a0), v0.t
	ret
.Lfunc_end19:
	.size	masked_store_v16i64, .Lfunc_end19-masked_store_v16i64
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v32i8              # -- Begin function masked_store_v32i8
	.p2align	2
	.type	masked_store_v32i8,@function
	.variant_cc	masked_store_v32i8
masked_store_v32i8:                     # @masked_store_v32i8
	.cfi_startproc
# %bb.0:
	li	a1, 32
	vsetvli	zero, a1, e8, m2, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end20:
	.size	masked_store_v32i8, .Lfunc_end20-masked_store_v32i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v32i16             # -- Begin function masked_store_v32i16
	.p2align	2
	.type	masked_store_v32i16,@function
	.variant_cc	masked_store_v32i16
masked_store_v32i16:                    # @masked_store_v32i16
	.cfi_startproc
# %bb.0:
	li	a1, 32
	vsetvli	zero, a1, e16, m4, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end21:
	.size	masked_store_v32i16, .Lfunc_end21-masked_store_v32i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v32i32             # -- Begin function masked_store_v32i32
	.p2align	2
	.type	masked_store_v32i32,@function
	.variant_cc	masked_store_v32i32
masked_store_v32i32:                    # @masked_store_v32i32
	.cfi_startproc
# %bb.0:
	li	a1, 32
	vsetvli	zero, a1, e32, m8, ta, ma
	vse32.v	v8, (a0), v0.t
	ret
.Lfunc_end22:
	.size	masked_store_v32i32, .Lfunc_end22-masked_store_v32i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v32i64             # -- Begin function masked_store_v32i64
	.p2align	2
	.type	masked_store_v32i64,@function
	.variant_cc	masked_store_v32i64
masked_store_v32i64:                    # @masked_store_v32i64
	.cfi_startproc
# %bb.0:
	vsetivli	zero, 16, e64, m8, ta, ma
	vse64.v	v8, (a0), v0.t
	vsetivli	zero, 2, e8, mf4, ta, ma
	vslidedown.vi	v0, v0, 2
	addi	a0, a0, 128
	vsetivli	zero, 16, e64, m8, ta, ma
	vse64.v	v16, (a0), v0.t
	ret
.Lfunc_end23:
	.size	masked_store_v32i64, .Lfunc_end23-masked_store_v32i64
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v64i8              # -- Begin function masked_store_v64i8
	.p2align	2
	.type	masked_store_v64i8,@function
	.variant_cc	masked_store_v64i8
masked_store_v64i8:                     # @masked_store_v64i8
	.cfi_startproc
# %bb.0:
	li	a1, 64
	vsetvli	zero, a1, e8, m4, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end24:
	.size	masked_store_v64i8, .Lfunc_end24-masked_store_v64i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v64i16             # -- Begin function masked_store_v64i16
	.p2align	2
	.type	masked_store_v64i16,@function
	.variant_cc	masked_store_v64i16
masked_store_v64i16:                    # @masked_store_v64i16
	.cfi_startproc
# %bb.0:
	li	a1, 64
	vsetvli	zero, a1, e16, m8, ta, ma
	vse16.v	v8, (a0), v0.t
	ret
.Lfunc_end25:
	.size	masked_store_v64i16, .Lfunc_end25-masked_store_v64i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v64i32             # -- Begin function masked_store_v64i32
	.p2align	2
	.type	masked_store_v64i32,@function
	.variant_cc	masked_store_v64i32
masked_store_v64i32:                    # @masked_store_v64i32
	.cfi_startproc
# %bb.0:
	li	a1, 32
	vsetivli	zero, 4, e8, mf2, ta, ma
	vslidedown.vi	v24, v0, 4
	vsetvli	zero, a1, e32, m8, ta, ma
	vse32.v	v8, (a0), v0.t
	addi	a0, a0, 128
	vmv1r.v	v0, v24
	vse32.v	v16, (a0), v0.t
	ret
.Lfunc_end26:
	.size	masked_store_v64i32, .Lfunc_end26-masked_store_v64i32
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v128i8             # -- Begin function masked_store_v128i8
	.p2align	2
	.type	masked_store_v128i8,@function
	.variant_cc	masked_store_v128i8
masked_store_v128i8:                    # @masked_store_v128i8
	.cfi_startproc
# %bb.0:
	li	a1, 128
	vsetvli	zero, a1, e8, m8, ta, ma
	vse8.v	v8, (a0), v0.t
	ret
.Lfunc_end27:
	.size	masked_store_v128i8, .Lfunc_end27-masked_store_v128i8
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v128i16            # -- Begin function masked_store_v128i16
	.p2align	2
	.type	masked_store_v128i16,@function
	.variant_cc	masked_store_v128i16
masked_store_v128i16:                   # @masked_store_v128i16
	.cfi_startproc
# %bb.0:
	li	a1, 64
	vsetivli	zero, 8, e8, m1, ta, ma
	vslidedown.vi	v24, v0, 8
	vsetvli	zero, a1, e16, m8, ta, ma
	vse16.v	v8, (a0), v0.t
	addi	a0, a0, 128
	vmv1r.v	v0, v24
	vse16.v	v16, (a0), v0.t
	ret
.Lfunc_end28:
	.size	masked_store_v128i16, .Lfunc_end28-masked_store_v128i16
	.cfi_endproc
                                        # -- End function
	.globl	masked_store_v256i8             # -- Begin function masked_store_v256i8
	.p2align	2
	.type	masked_store_v256i8,@function
	.variant_cc	masked_store_v256i8
masked_store_v256i8:                    # @masked_store_v256i8
	.cfi_startproc
# %bb.0:
	li	a2, 128
	vsetvli	zero, a2, e8, m8, ta, ma
	vlm.v	v24, (a1)
	addi	a1, a0, 128
	vse8.v	v8, (a0), v0.t
	vmv1r.v	v0, v24
	vse8.v	v16, (a1), v0.t
	ret
.Lfunc_end29:
	.size	masked_store_v256i8, .Lfunc_end29-masked_store_v256i8
	.cfi_endproc
                                        # -- End function
	.section	".note.GNU-stack","",@progbits
