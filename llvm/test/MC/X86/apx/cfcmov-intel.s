# RUN: llvm-mc -triple x86_64 -x86-asm-syntax=intel -output-asm-variant=1 --show-encoding %s | FileCheck %s

# CHECK: cfcmovb	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x42,0xe9]
         cfcmovb	r25w, r21w, r17w

# CHECK: cfcmovb	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x42,0xcd]
         cfcmovb	r21w, r17w

# CHECK: cfcmovb	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x42,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovb	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x42,0xf2]
         cfcmovb	r26d, r22d, r18d

# CHECK: cfcmovb	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x42,0xd6]
         cfcmovb	r22d, r18d

# CHECK: cfcmovb	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x42,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovb	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x42,0xfb]
         cfcmovb	r27, r23, r19

# CHECK: cfcmovb	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x42,0xdf]
         cfcmovb	r23, r19

# CHECK: cfcmovb	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x42,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovb	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x42,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovb	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x42,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovb	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x42,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovb	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x42,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovb	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x42,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovb	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x42,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovb	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovbe	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x46,0xe9]
         cfcmovbe	r25w, r21w, r17w

# CHECK: cfcmovbe	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x46,0xcd]
         cfcmovbe	r21w, r17w

# CHECK: cfcmovbe	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x46,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovbe	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x46,0xf2]
         cfcmovbe	r26d, r22d, r18d

# CHECK: cfcmovbe	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x46,0xd6]
         cfcmovbe	r22d, r18d

# CHECK: cfcmovbe	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x46,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovbe	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x46,0xfb]
         cfcmovbe	r27, r23, r19

# CHECK: cfcmovbe	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x46,0xdf]
         cfcmovbe	r23, r19

# CHECK: cfcmovbe	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x46,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovbe	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x46,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovbe	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x46,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovbe	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x46,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovbe	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x46,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovbe	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x46,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovbe	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x46,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovbe	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovl	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x4c,0xe9]
         cfcmovl	r25w, r21w, r17w

# CHECK: cfcmovl	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x4c,0xcd]
         cfcmovl	r21w, r17w

# CHECK: cfcmovl	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x4c,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovl	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x4c,0xf2]
         cfcmovl	r26d, r22d, r18d

# CHECK: cfcmovl	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x4c,0xd6]
         cfcmovl	r22d, r18d

# CHECK: cfcmovl	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x4c,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovl	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x4c,0xfb]
         cfcmovl	r27, r23, r19

# CHECK: cfcmovl	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x4c,0xdf]
         cfcmovl	r23, r19

# CHECK: cfcmovl	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x4c,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovl	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x4c,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovl	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x4c,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovl	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x4c,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovl	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x4c,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovl	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x4c,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovl	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x4c,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovl	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovle	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x4e,0xe9]
         cfcmovle	r25w, r21w, r17w

# CHECK: cfcmovle	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x4e,0xcd]
         cfcmovle	r21w, r17w

# CHECK: cfcmovle	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x4e,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovle	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x4e,0xf2]
         cfcmovle	r26d, r22d, r18d

# CHECK: cfcmovle	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x4e,0xd6]
         cfcmovle	r22d, r18d

# CHECK: cfcmovle	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x4e,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovle	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x4e,0xfb]
         cfcmovle	r27, r23, r19

# CHECK: cfcmovle	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x4e,0xdf]
         cfcmovle	r23, r19

# CHECK: cfcmovle	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x4e,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovle	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x4e,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovle	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x4e,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovle	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x4e,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovle	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x4e,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovle	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x4e,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovle	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x4e,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovle	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovae	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x43,0xe9]
         cfcmovae	r25w, r21w, r17w

# CHECK: cfcmovae	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x43,0xcd]
         cfcmovae	r21w, r17w

# CHECK: cfcmovae	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x43,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovae	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x43,0xf2]
         cfcmovae	r26d, r22d, r18d

# CHECK: cfcmovae	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x43,0xd6]
         cfcmovae	r22d, r18d

# CHECK: cfcmovae	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x43,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovae	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x43,0xfb]
         cfcmovae	r27, r23, r19

# CHECK: cfcmovae	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x43,0xdf]
         cfcmovae	r23, r19

# CHECK: cfcmovae	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x43,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovae	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x43,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovae	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x43,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovae	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x43,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovae	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x43,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovae	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x43,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovae	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x43,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovae	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmova	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x47,0xe9]
         cfcmova	r25w, r21w, r17w

# CHECK: cfcmova	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x47,0xcd]
         cfcmova	r21w, r17w

# CHECK: cfcmova	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x47,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmova	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmova	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x47,0xf2]
         cfcmova	r26d, r22d, r18d

# CHECK: cfcmova	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x47,0xd6]
         cfcmova	r22d, r18d

# CHECK: cfcmova	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x47,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmova	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmova	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x47,0xfb]
         cfcmova	r27, r23, r19

# CHECK: cfcmova	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x47,0xdf]
         cfcmova	r23, r19

# CHECK: cfcmova	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x47,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmova	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmova	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x47,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmova	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmova	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x47,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmova	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmova	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x47,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmova	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmova	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x47,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmova	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmova	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x47,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmova	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmova	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x47,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmova	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovge	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x4d,0xe9]
         cfcmovge	r25w, r21w, r17w

# CHECK: cfcmovge	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x4d,0xcd]
         cfcmovge	r21w, r17w

# CHECK: cfcmovge	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x4d,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovge	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x4d,0xf2]
         cfcmovge	r26d, r22d, r18d

# CHECK: cfcmovge	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x4d,0xd6]
         cfcmovge	r22d, r18d

# CHECK: cfcmovge	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x4d,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovge	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x4d,0xfb]
         cfcmovge	r27, r23, r19

# CHECK: cfcmovge	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x4d,0xdf]
         cfcmovge	r23, r19

# CHECK: cfcmovge	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x4d,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovge	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x4d,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovge	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x4d,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovge	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x4d,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovge	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x4d,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovge	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x4d,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovge	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x4d,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovge	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovno	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x41,0xe9]
         cfcmovno	r25w, r21w, r17w

# CHECK: cfcmovno	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x41,0xcd]
         cfcmovno	r21w, r17w

# CHECK: cfcmovno	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x41,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovno	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x41,0xf2]
         cfcmovno	r26d, r22d, r18d

# CHECK: cfcmovno	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x41,0xd6]
         cfcmovno	r22d, r18d

# CHECK: cfcmovno	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x41,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovno	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x41,0xfb]
         cfcmovno	r27, r23, r19

# CHECK: cfcmovno	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x41,0xdf]
         cfcmovno	r23, r19

# CHECK: cfcmovno	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x41,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovno	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x41,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovno	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x41,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovno	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x41,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovno	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x41,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovno	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x41,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovno	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x41,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovno	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovnp	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x4b,0xe9]
         cfcmovnp	r25w, r21w, r17w

# CHECK: cfcmovnp	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x4b,0xcd]
         cfcmovnp	r21w, r17w

# CHECK: cfcmovnp	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x4b,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovnp	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x4b,0xf2]
         cfcmovnp	r26d, r22d, r18d

# CHECK: cfcmovnp	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x4b,0xd6]
         cfcmovnp	r22d, r18d

# CHECK: cfcmovnp	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x4b,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovnp	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x4b,0xfb]
         cfcmovnp	r27, r23, r19

# CHECK: cfcmovnp	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x4b,0xdf]
         cfcmovnp	r23, r19

# CHECK: cfcmovnp	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x4b,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovnp	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x4b,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovnp	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x4b,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovnp	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x4b,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovnp	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x4b,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovnp	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x4b,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovnp	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x4b,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovnp	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovns	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x49,0xe9]
         cfcmovns	r25w, r21w, r17w

# CHECK: cfcmovns	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x49,0xcd]
         cfcmovns	r21w, r17w

# CHECK: cfcmovns	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x49,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovns	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x49,0xf2]
         cfcmovns	r26d, r22d, r18d

# CHECK: cfcmovns	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x49,0xd6]
         cfcmovns	r22d, r18d

# CHECK: cfcmovns	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x49,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovns	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x49,0xfb]
         cfcmovns	r27, r23, r19

# CHECK: cfcmovns	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x49,0xdf]
         cfcmovns	r23, r19

# CHECK: cfcmovns	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x49,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovns	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x49,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovns	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x49,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovns	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x49,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovns	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x49,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovns	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x49,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovns	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x49,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovns	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovne	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x45,0xe9]
         cfcmovne	r25w, r21w, r17w

# CHECK: cfcmovne	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x45,0xcd]
         cfcmovne	r21w, r17w

# CHECK: cfcmovne	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x45,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovne	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x45,0xf2]
         cfcmovne	r26d, r22d, r18d

# CHECK: cfcmovne	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x45,0xd6]
         cfcmovne	r22d, r18d

# CHECK: cfcmovne	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x45,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovne	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x45,0xfb]
         cfcmovne	r27, r23, r19

# CHECK: cfcmovne	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x45,0xdf]
         cfcmovne	r23, r19

# CHECK: cfcmovne	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x45,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovne	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x45,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovne	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x45,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovne	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x45,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovne	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x45,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovne	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x45,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovne	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x45,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovne	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovp	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x4a,0xe9]
         cfcmovp	r25w, r21w, r17w

# CHECK: cfcmovp	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x4a,0xcd]
         cfcmovp	r21w, r17w

# CHECK: cfcmovp	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x4a,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovp	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x4a,0xf2]
         cfcmovp	r26d, r22d, r18d

# CHECK: cfcmovp	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x4a,0xd6]
         cfcmovp	r22d, r18d

# CHECK: cfcmovp	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x4a,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovp	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x4a,0xfb]
         cfcmovp	r27, r23, r19

# CHECK: cfcmovp	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x4a,0xdf]
         cfcmovp	r23, r19

# CHECK: cfcmovp	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x4a,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovp	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x4a,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovp	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x4a,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovp	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x4a,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovp	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x4a,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovp	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x4a,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovp	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x4a,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovp	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovs	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x48,0xe9]
         cfcmovs	r25w, r21w, r17w

# CHECK: cfcmovs	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x48,0xcd]
         cfcmovs	r21w, r17w

# CHECK: cfcmovs	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x48,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmovs	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x48,0xf2]
         cfcmovs	r26d, r22d, r18d

# CHECK: cfcmovs	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x48,0xd6]
         cfcmovs	r22d, r18d

# CHECK: cfcmovs	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x48,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmovs	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x48,0xfb]
         cfcmovs	r27, r23, r19

# CHECK: cfcmovs	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x48,0xdf]
         cfcmovs	r23, r19

# CHECK: cfcmovs	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x48,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmovs	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x48,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovs	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x48,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovs	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x48,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovs	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x48,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovs	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x48,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmovs	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x48,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmovs	r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmove	r25w, r21w, r17w
# CHECK: encoding: [0x62,0xec,0x35,0x14,0x44,0xe9]
         cfcmove	r25w, r21w, r17w

# CHECK: cfcmove	r21w, r17w
# CHECK: encoding: [0x62,0xec,0x7d,0x0c,0x44,0xcd]
         cfcmove	r21w, r17w

# CHECK: cfcmove	word ptr [r28 + 4*r29 + 291], r17w
# CHECK: encoding: [0x62,0x8c,0x79,0x0c,0x44,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmove	word ptr [r28 + 4*r29 + 291], r17w

# CHECK: cfcmove	r26d, r22d, r18d
# CHECK: encoding: [0x62,0xec,0x2c,0x14,0x44,0xf2]
         cfcmove	r26d, r22d, r18d

# CHECK: cfcmove	r22d, r18d
# CHECK: encoding: [0x62,0xec,0x7c,0x0c,0x44,0xd6]
         cfcmove	r22d, r18d

# CHECK: cfcmove	dword ptr [r28 + 4*r29 + 291], r18d
# CHECK: encoding: [0x62,0x8c,0x78,0x0c,0x44,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmove	dword ptr [r28 + 4*r29 + 291], r18d

# CHECK: cfcmove	r27, r23, r19
# CHECK: encoding: [0x62,0xec,0xa4,0x14,0x44,0xfb]
         cfcmove	r27, r23, r19

# CHECK: cfcmove	r23, r19
# CHECK: encoding: [0x62,0xec,0xfc,0x0c,0x44,0xdf]
         cfcmove	r23, r19

# CHECK: cfcmove	qword ptr [r28 + 4*r29 + 291], r19
# CHECK: encoding: [0x62,0x8c,0xf8,0x0c,0x44,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmove	qword ptr [r28 + 4*r29 + 291], r19

# CHECK: cfcmove	r21w, r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x51,0x14,0x44,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmove	r21w, r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmove	r17w, word ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x79,0x08,0x44,0x8c,0xac,0x23,0x01,0x00,0x00]
         cfcmove	r17w, word ptr [r28 + 4*r29 + 291]

# CHECK: cfcmove	r22d, r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x48,0x14,0x44,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmove	r22d, r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmove	r18d, dword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0x78,0x08,0x44,0x94,0xac,0x23,0x01,0x00,0x00]
         cfcmove	r18d, dword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmove	r23, r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xc0,0x14,0x44,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmove	r23, r19, qword ptr [r28 + 4*r29 + 291]

# CHECK: cfcmove	r19, qword ptr [r28 + 4*r29 + 291]
# CHECK: encoding: [0x62,0x8c,0xf8,0x08,0x44,0x9c,0xac,0x23,0x01,0x00,0x00]
         cfcmove	r19, qword ptr [r28 + 4*r29 + 291]
