
# MBR
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
    # Find bootable partition
    7c1d:	be be 07             	mov    $0x7be,%si
    7c20:	b3 04                	mov    $0x4,%bl
    7c22:	80 3c 80             	cmpb   $0x80,(%si)
    7c25:	74 25                	je     0x7c4c
    7c27:	80 3c 00             	cmpb   $0x0,(%si)
    7c2a:	75 09                	jne    0x7c35
    7c2c:	83 c6 10             	add    $0x10,%si
    7c2f:	fe cb                	dec    %bl
    7c31:	75 ef                	jne    0x7c22
    7c33:	cd 18                	int    $0x18 # Notify BIOS that boot failed.

    7c35:	be 9e 06             	mov    $0x69e,%si
    7c38:	ac                   	lods   %ds:(%si),%al
    7c39:	3c 00                	cmp    $0x0,%al
    7c3b:	74 0c                	je     0x7c49
    7c3d:	56                   	push   %si
    7c3e:	bb 07 00             	mov    $0x7,%bx
    7c41:	b4 0e                	mov    $0xe,%ah
    7c43:	cd 10                	int    $0x10
    7c45:	5e                   	pop    %si
    7c46:	e9 ef ff             	jmp    0x7c38
    7c49:	e9 fd ff             	jmp    0x7c49
    # After found bootable partition in %si
    7c4c:	8b 14                	mov    (%si),%dx
    7c4e:	8b 4c 02             	mov    0x2(%si),%cx
    7c51:	89 f5                	mov    %si,%bp
    7c53:	bf 05 00             	mov    $0x5,%di
    7c56:	bb 00 7c             	mov    $0x7c00,%bx
    7c59:	b8 01 02             	mov    $0x201,%ax
    7c5c:	57                   	push   %di
    7c5d:	cd 13                	int    $0x13
    7c5f:	5f                   	pop    %di
    7c60:	73 0d                	jae    0x7c6f
    7c62:	31 c0                	xor    %ax,%ax
    7c64:	cd 13                	int    $0x13
    7c66:	4f                   	dec    %di
    7c67:	75 ed                	jne    0x7c56
    7c69:	be 7f 06             	mov    $0x67f,%si
    7c6c:	e9 c9 ff             	jmp    0x7c38
    7c6f:	bf fe 7d             	mov    $0x7dfe,%di
    7c72:	81 3d 55 aa          	cmpw   $0xaa55,(%di) # check if has MBR/VBR signature
    7c76:	75 bd                	jne    0x7c35
    7c78:	89 ee                	mov    %bp,%si
    7c7a:	ea 00 7c 00 00       	ljmp   $0x0,$0x7c00 # boot VBR ?
    # var
    7c7f: db  "Error loading operating system"
    7cb6: db 0x00
	...
    7d00:
        32836785814746803233750800000000
        E789138FE2AD5DF78DA962BD6810DF9D
        68C580F937F33B1CD409402CCD956EFD
        38825E198A1C4F7D82216CC99142BC0F
        8960835E6742225E2DCD6A45AA561806
# ------------------------------------------------------------------ #
# VBR
    7c00:       fa                      cli    
    7c01:       eb 0e                   jmp    0x7c11 # jump1
    7c03:       90                      nop
# VAR ?
    7c04:       80 4b 58 01
    7c08:       00 41 69 8d
# jump1:
    7c0b:       8d 7e 01                lea    0x1(%bp),%di
    7c0e:       00 00                   add    %al,(%bx,%si)
    7c10:       00 31                   add    %dh,(%bx,%di)
    7c12:       ed                      in     (%dx),%ax
    7c13:       b8 00 70                mov    $0x7000,%ax
    7c16:       8e d0                   mov    %ax,%ss
    7c18:       66 bc f0 ff 00 00       mov    $0xfff0,%esp
    7c1e:       fb                      sti    
    7c1f:       8c d8                   mov    %ds,%ax
    7c21:       8e c0                   mov    %ax,%es
    7c23:       89 f7                   mov    %si,%di
    7c25:       b8 c0 07                mov    $0x7c0,%ax
    7c28:       8e d8                   mov    %ax,%ds
    7c2a:       31 f6                   xor    %si,%si
    7c2c:       b8 00 10                mov    $0x1000,%ax
    7c2f:       8e c0                   mov    %ax,%es
    7c31:       31 ff                   xor    %di,%di
    7c33:       b9 80 00                mov    $0x80,%cx
    7c36:       66 f3 a5                rep movsl %ds:(%si),%es:(%di)
    7c39:       b8 00 10                mov    $0x1000,%ax
    7c3c:       8e d8                   mov    %ax,%ds
    7c3e:       ea 43 00 00 10          ljmp   $0x1000,$0x43
    7c43:       1e                      push   %ds
    7c44:       07                      pop    %es
    7c45:       bf 4d 00                mov    $0x4d,%di
    7c48:       e8 30 01                call   0x7d7b
    7c4b:       eb 09                   jmp    0x7c56
    7c4d:       4c                      dec    %sp
    7c4e:       6f                      outsw  %ds:(%si),(%dx)
    7c4f:       61                      popa   
    7c50:       64 69 6e 67 20 00       imul   $0x20,%fs:0x67(%bp),%bp
    7c56:       c6 06 04 00 80          movb   $0x80,0x4
    7c5b:       b8 20 10                mov    $0x1020,%ax
    7c5e:       8e c0                   mov    %ax,%es
    7c60:       31 ff                   xor    %di,%di
    7c62:       66 a1 0d 00             mov    0xd,%eax
    7c66:       66 a1 09 00             mov    0x9,%eax
    7c6a:       26 66 c7 06 09 00 00    movl   $0x0,%es:0x9
    7c71:       00 00 00 
    7c74:       66 8b 1e 0d 00          mov    0xd,%ebx
    7c79:       e8 5b 00                call   0x7cd7
    7c7c:       26 66 3b 06 09 00       cmp    %es:0x9,%eax
    7c82:       74 10                   je     0x7c94
    7c84:       fe 06 04 00             incb   0x4
    7c88:       80 3e 04 00 83          cmpb   $0x83,0x4
    7c8d:       76 db                   jbe    0x7c6a
    7c8f:       c6 06 04 00 80          movb   $0x80,0x4
    7c94:       66 8b 1e 05 00          mov    0x5,%ebx
    7c99:       8c d8                   mov    %ds,%ax
    7c9b:       8e c0                   mov    %ax,%es
    7c9d:       bf 00 06                mov    $0x600,%di
    7ca0:       e8 34 00                call   0x7cd7
    7ca3:       b8 00 60                mov    $0x6000,%ax
    7ca6:       8e c0                   mov    %ax,%es
    7ca8:       31 ff                   xor    %di,%di
    7caa:       be 00 06                mov    $0x600,%si
    7cad:       66 ad                   lods   %ds:(%si),%eax
    7caf:       81 fe 00 08             cmp    $0x800,%si
    7cb3:       73 11                   jae    0x7cc6
    7cb5:       66 09 c0                or     %eax,%eax
    7cb8:       74 0c                   je     0x7cc6
    7cba:       66 89 c3                mov    %eax,%ebx
    7cbd:       e8 17 00                call   0x7cd7
    7cc0:       81 c7 00 02             add    $0x200,%di
    7cc4:       eb e7                   jmp    0x7cad
    7cc6:       a0 04 00                mov    0x4,%al
    7cc9:       26 a2 04 00             mov    %al,%es:0x4
    7ccd:       b8 00 60                mov    $0x6000,%ax
    7cd0:       8e d8                   mov    %ax,%ds
    7cd2:       ea 00 00 00 60          ljmp   $0x6000,$0x0
    7cd7:       06                      push   %es
    7cd8:       66 50                   push   %eax
    7cda:       66 51                   push   %ecx
    7cdc:       66 52                   push   %edx
    7cde:       66 53                   push   %ebx
    7ce0:       b9 02 00                mov    $0x2,%cx
    7ce3:       51                      push   %cx
    7ce4:       1e                      push   %ds
    7ce5:       56                      push   %si
    7ce6:       8a 16 04 00             mov    0x4,%dl
    7cea:       66 31 c0                xor    %eax,%eax
    7ced:       66 50                   push   %eax
    7cef:       66 50                   push   %eax
    7cf1:       66 53                   push   %ebx
    7cf3:       06                      push   %es
    7cf4:       57                      push   %di
    7cf5:       6a 01                   push   $0x1
    7cf7:       6a 10                   push   $0x10
    7cf9:       8c d0                   mov    %ss,%ax
    7cfb:       8e d8                   mov    %ax,%ds
    7cfd:       89 e6                   mov    %sp,%si
    7cff:       b4 42                   mov    $0x42,%ah
    7d01:       cd 13                   int    $0x13
    7d03:       83 c4 14                add    $0x14,%sp
    7d06:       5e                      pop    %si
    7d07:       1f                      pop    %ds
    7d08:       59                      pop    %cx
    7d09:       49                      dec    %cx
    7d0a:       09 c9                   or     %cx,%cx
    7d0c:       74 06                   je     0x7d14
    7d0e:       08 e4                   or     %ah,%ah
    7d10:       75 d1                   jne    0x7ce3
    7d12:       eb 54                   jmp    0x7d68
    7d14:       06                      push   %es
    7d15:       57                      push   %di
    7d16:       b4 08                   mov    $0x8,%ah
    7d18:       8a 16 04 00             mov    0x4,%dl
    7d1c:       31 ff                   xor    %di,%di
    7d1e:       8e c7                   mov    %di,%es
    7d20:       cd 13                   int    $0x13
    7d22:       5f                      pop    %di
    7d23:       07                      pop    %es
    7d24:       72 36                   jb     0x7d5c
    7d26:       fe c6                   inc    %dh
    7d28:       88 f0                   mov    %dh,%al
    7d2a:       80 e1 3f                and    $0x3f,%cl
    7d2d:       f6 e1                   mul    %cl
    7d2f:       66 5b                   pop    %ebx
    7d31:       66 53                   push   %ebx
    7d33:       66 89 da                mov    %ebx,%edx
    7d36:       66 c1 ea 10             shr    $0x10,%edx
    7d3a:       93                      xchg   %ax,%bx
    7d3b:       f7 f3                   div    %bx
    7d3d:       92                      xchg   %ax,%dx
    7d3e:       f6 f1                   div    %cl
    7d40:       fe c4                   inc    %ah
    7d42:       88 d5                   mov    %dl,%ch
    7d44:       88 f1                   mov    %dh,%cl
    7d46:       c0 e1 06                shl    $0x6,%cl
    7d49:       08 e1                   or     %ah,%cl
    7d4b:       88 c6                   mov    %al,%dh
    7d4d:       b8 01 02                mov    $0x201,%ax
    7d50:       8a 16 04 00             mov    0x4,%dl
    7d54:       89 fb                   mov    %di,%bx
    7d56:       cd 13                   int    $0x13
    7d58:       73 0e                   jae    0x7d68
    7d5a:       eb fe                   jmp    0x7d5a
    7d5c:       88 e0                   mov    %ah,%al
    7d5e:       e8 35 00                call   0x7d96
    7d61:       b0 20                   mov    $0x20,%al
    7d63:       e8 0c 00                call   0x7d72
    7d66:       eb fe                   jmp    0x7d66
    7d68:       66 5b                   pop    %ebx
    7d6a:       66 5a                   pop    %edx
    7d6c:       66 59                   pop    %ecx
    7d6e:       66 58                   pop    %eax
    7d70:       07                      pop    %es
    7d71:       c3                      ret    
    7d72:       50                      push   %ax
    7d73:       52                      push   %dx
    7d74:       b4 0e                   mov    $0xe,%ah
    7d76:       cd 10                   int    $0x10
    7d78:       5a                      pop    %dx
    7d79:       58                      pop    %ax
    7d7a:       c3                      ret    
    7d7b:       50                      push   %ax
    7d7c:       57                      push   %di
    7d7d:       51                      push   %cx
    7d7e:       52                      push   %dx
    7d7f:       31 c9                   xor    %cx,%cx
    7d81:       30 d2                   xor    %dl,%dl
    7d83:       26 8a 05                mov    %es:(%di),%al
    7d86:       38 d0                   cmp    %dl,%al
    7d88:       74 07                   je     0x7d91
    7d8a:       e8 e5 ff                call   0x7d72
    7d8d:       41                      inc    %cx
    7d8e:       47                      inc    %di
    7d8f:       eb f2                   jmp    0x7d83
    7d91:       5a                      pop    %dx
    7d92:       59                      pop    %cx
    7d93:       5f                      pop    %di
    7d94:       58                      pop    %ax
    7d95:       c3                      ret    
    7d96:       52                      push   %dx
    7d97:       88 c2                   mov    %al,%dl
    7d99:       c0 ea 04                shr    $0x4,%dl
    7d9c:       e8 0a 00                call   0x7da9
    7d9f:       88 c2                   mov    %al,%dl
    7da1:       80 e2 0f                and    $0xf,%dl
    7da4:       e8 02 00                call   0x7da9
    7da7:       5a                      pop    %dx
    7da8:       c3                      ret    
    7da9:       50                      push   %ax
    7daa:       88 d0                   mov    %dl,%al
    7dac:       3c 0a                   cmp    $0xa,%al
    7dae:       7c 06                   jl     0x7db6
    7db0:       2c 0a                   sub    $0xa,%al
    7db2:       04 61                   add    $0x61,%al
    7db4:       eb 02                   jmp    0x7db8
    7db6:       04 30                   add    $0x30,%al
    7db8:       e8 b7 ff                call   0x7d72
    7dbb:       58                      pop    %ax
    7dbc:       c3                      ret    
    7dbd:       50                      push   %ax
    7dbe:       b0 0a                   mov    $0xa,%al
    7dc0:       e8 af ff                call   0x7d72
    7dc3:       b0 0d                   mov    $0xd,%al
    7dc5:       e8 aa ff                call   0x7d72
    7dc8:       58                      pop    %ax
    7dc9:       c3                      ret    
    7dca:       50                      push   %ax
    7dcb:       b0 20                   mov    $0x20,%al
    7dcd:       e8 a2 ff                call   0x7d72
    7dd0:       58                      pop    %ax
    7dd1:       c3                      ret    
        ...
    7dfe:       55                      push   %bp
    7dff:       aa                      stos   %al,%es:(%di)