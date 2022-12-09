


```
Linux version 5.6.3-64 (agent@cicd-a06.mt.lv) (gcc version 11.1.0 (GCC)) #1 SMP Mon Oct 17 11:05:29 UTC 2022
```

## Disassembly MBR

``` sh
objdump  -d -mi386 -Maddr16,data16 -b binary --adjust-vma=0x7c00 -D mbr-446.bin
```

## How MT determine its serial?

