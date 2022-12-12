
# Mikrotik 7.x Research


```
Linux version 5.6.3-64 (agent@cicd-a06.mt.lv) (gcc version 11.1.0 (GCC)) #1 SMP Mon Oct 17 11:05:29 UTC 2022
```

Same kernel used in installation & in installed version

## Disassembly MBR

``` sh
objdump  -d -mi386 -Maddr16,data16 -b binary --adjust-vma=0x7c00 -D mbr-446.bin
```

## How MT determine its serial?

HDD read/write catch:

file:///mt7.6/traces/traces.94


## Boot process (the `/init`)

- Kernel loaded, and run init process
- init check file `/ram/rosmode` for ?
- init check file `/dev/jiffies` for ?
- init check for available memory
- Setup basic fs:
    - mkdir("/proc", 0755)         = -1 EEXIST (File exists)
    - mount("proc", "/proc", "proc", 0, NULL) = -1 EBUSY (Device or resource busy)
    - mkdir("/ram", 0755)          = 0
    - mount("tmpfs", "/ram", "tmpfs", 0, NULL) = 0
    - mkdir("/dev", 0755)          = -1 EEXIST (File exists)
    - mount("devtmpfs", "/dev", "devtmpfs", 0, NULL) = 0
    - mkdir("/flash", 0755)        = 0
    - symlink("/system/bin", "/bin") = -1 EEXIST (File exists)
    - symlink("/system/sbin", "/sbin") = 0
    - symlink("/system/lib", "/lib") = 0
    - open("/ramroot", O_RDONLY|O_LARGEFILE) = -1 ENOENT (No such file or directory)
    - mkdir("/sys", 0755)          = -1 EEXIST (File exists)
    - mount("sysfs", "/sys", "sysfs", 0, NULL) = -1 EBUSY (Device or resource busy)
    - ...
    - mount("/dev/sda2", "/flash", "ext3", MS_RDONLY|MS_NOATIME, NULL) = 0
    - symlink("/dev/sda", "/dev/root-disk") = 0
    - open("/flash/MANIFEST", O_RDONLY|O_LARGEFILE) = -1 ENOENT (No such file or directory)
- Unpack npk `/flash/var/pdb/system/image`
- Mount loop of system package (Encrypted ?) (dumped)
- Mount system squashfs to /system
- Mount hdd (root) to /system/flash, boot partition to /system/boot
- fork `/sbin/sysinit`, ["sysinit", "fsck"]
- do more stuff ..

- fork chroot to /system, and `execve /sbin/sysinit start`, env:
    - SHLVL=x
    - TERM=vt100
    - PWD=/
    - arch=i386
    - PATH=/sbin:/bin
    - LD_LIBRARY_PATH=/pckg/wireless/lib:/pckg/security/lib:/pckg/ppp/lib:/pckg/hotspot/lib:/pckg/dhcp/lib:/lib

## Patching init

Patch init to not run /system/sysinit, but our controlled binary.

- Before init execute the /system/sysinit, the sda2 (our root partition)
  is mounted on /system/flash
- So we just need to replace string `/sbin/sysinit` to  `/boot/sysinit` (custom binary)
