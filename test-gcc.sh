#!/bin/sh

echo | ~/app/gcc1/bin/gcc -E \
--include ./types.h \
-I/rifin/app/gcc1/lib/gcc/x86_64-pc-linux-gnu/11.1.0/include \
-I/rifin/app/linux-5.6.3/include \
-I/rifin/app/linux-5.6.3/arch/x86/include \
-I/usr/src/linux-headers-5.10.0-10-amd64/arch/x86/include/generated \
-I/usr/src/linux-headers-5.10.0-10-amd64/include \
-I/usr/include/x86_64-linux-gnu \
-I/usr/include \
-D_X86_ \
-D__KERNEL__ \
-D_POSIX_C_SOURCE \
-D_BSD_SOURCE \
-D__WORDSIZE=64 \
'-D__builtin_va_list=void *' \
-D__DO_NOT_DEFINE_COMPILE \
-D_Complex \
-D_WCHAR_T \
-D__NO_STRING_INLINES \
-D__signed__ \
-D__extension__="" \
-D__GLIBC_HAVE_LONG_LONG=1 \
-Daligned_u64=uint64_t \
-

