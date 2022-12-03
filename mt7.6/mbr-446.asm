
mbr-446.bin:     file format binary


Disassembly of section .data:

00007c00 <.data>:
    7c00:	fa                   	cli    
    7c01:	31 c0                	xor    %ax,%ax
    7c03:	8e d0                	mov    %ax,%ss
    7c05:	bc 00 7c             	mov    $0x7c00,%sp
    7c08:	89 e6                	mov    %sp,%si
    7c0a:	50                   	push   %ax
    7c0b:	07                   	pop    %es
    7c0c:	50                   	push   %ax
    7c0d:	1f                   	pop    %ds
    7c0e:	fb                   	sti    
    7c0f:	fc                   	cld    
    7c10:	bf 00 06             	mov    $0x600,%di
    7c13:	b9 00 01             	mov    $0x100,%cx
    7c16:	f2 a5                	repnz movsw %ds:(%si),%es:(%di)
    7c18:	ea 1d 06 00 00       	ljmp   $0x0,$0x61d
    7c1d:	be be 07             	mov    $0x7be,%si
    7c20:	b3 04                	mov    $0x4,%bl
    7c22:	80 3c 80             	cmpb   $0x80,(%si)
    7c25:	74 23                	je     0x7c4a
    7c27:	80 3c 00             	cmpb   $0x0,(%si)
    7c2a:	75 09                	jne    0x7c35
    7c2c:	83 c6 10             	add    $0x10,%si
    7c2f:	fe cb                	dec    %bl
    7c31:	75 ef                	jne    0x7c22
    7c33:	cd 18                	int    $0x18
    7c35:	be 9b 06             	mov    $0x69b,%si

    7c38:	ac                   	lods   %ds:(%si),%al
    7c39:	3c 00                	cmp    $0x0,%al
    7c3b:	74 0b                	je     0x7c48
    7c3d:	56                   	push   %si
    7c3e:	bb 07 00             	mov    $0x7,%bx
    7c41:	b4 0e                	mov    $0xe,%ah
    7c43:	cd 10                	int    $0x10
    7c45:	5e                   	pop    %si
    7c46:	eb f0                	jmp    0x7c38
    
    7c48:	eb fe                	jmp    0x7c48
    7c4a:	8b 14                	mov    (%si),%dx
    7c4c:	8b 4c 02             	mov    0x2(%si),%cx
    7c4f:	89 f5                	mov    %si,%bp
    7c51:	bf 05 00             	mov    $0x5,%di
    7c54:	bb 00 7c             	mov    $0x7c00,%bx
    7c57:	b8 01 02             	mov    $0x201,%ax
    7c5a:	57                   	push   %di
    7c5b:	cd 13                	int    $0x13  # Check Drive status
    7c5d:	5f                   	pop    %di
    7c5e:	73 0c                	jae    0x7c6c
    7c60:	31 c0                	xor    %ax,%ax
    7c62:	cd 13                	int    $0x13 # Reset drives
    7c64:	4f                   	dec    %di
    7c65:	75 ed                	jne    0x7c54
    7c67:	be 7c 06             	mov    $0x67c,%si
    7c6a:	eb cc                	jmp    0x7c38

    7c6c:	bf fe 7d             	mov    $0x7dfe,%di
    7c6f:	81 3d 55 aa          	cmpw   $0xaa55,(%di)
    7c73:	75 c0                	jne    0x7c35
    7c75:	89 ee                	mov    %bp,%si
    7c77:	ea 00 7c 00 00       	ljmp   $0x0,$0x7c00
    7c7c:	45                   	inc    %bp
    7c7d:	72 72                	jb     0x7cf1
    7c7f:	6f                   	outsw  %ds:(%si),(%dx)
    7c80:	72 20                	jb     0x7ca2
    7c82:	6c                   	insb   (%dx),%es:(%di)
    7c83:	6f                   	outsw  %ds:(%si),(%dx)
    7c84:	61                   	popa   
    7c85:	64 69 6e 67 20 6f    	imul   $0x6f20,%fs:0x67(%bp),%bp
    7c8b:	70 65                	jo     0x7cf2
    7c8d:	72 61                	jb     0x7cf0
    7c8f:	74 69                	je     0x7cfa
    7c91:	6e                   	outsb  %ds:(%si),(%dx)
    7c92:	67 20 73 79          	and    %dh,0x79(%ebx)
    7c96:	73 74                	jae    0x7d0c
    7c98:	65 6d                	gs insw (%dx),%es:(%di)
    7c9a:	00 4d 69             	add    %cl,0x69(%di)
    7c9d:	73 73                	jae    0x7d12
    7c9f:	69 6e 67 20 6f       	imul   $0x6f20,0x67(%bp),%bp
    7ca4:	70 65                	jo     0x7d0b
    7ca6:	72 61                	jb     0x7d09
    7ca8:	74 69                	je     0x7d13
    7caa:	6e                   	outsb  %ds:(%si),(%dx)
    7cab:	67 20 73 79          	and    %dh,0x79(%ebx)
    7caf:	73 74                	jae    0x7d25
    7cb1:	65 6d                	gs insw (%dx),%es:(%di)
	...
    7d0b:	00 0d                	add    %cl,(%di)
	...
