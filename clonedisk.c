
#include <stdio.h>
#include <errno.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

/*
Compile:
gcc -o clonedisk clonedisk.c

Watch:
    while true
        do gcc -o clonedisk clonedisk.c && ./clonedisk ;
        inotifywait -e close_write -q clonedisk.c;
    done
*/
void DumpHex(const void *data, size_t size)
{
    char ascii[17];
    size_t i, j;
    ascii[16] = '\0';
    for (i = 0; i < size; ++i)
    {
        printf("%02X ", ((unsigned char *)data)[i]);
        if (((unsigned char *)data)[i] >= ' ' && ((unsigned char *)data)[i] <= '~')
        {
            ascii[i % 16] = ((unsigned char *)data)[i];
        }
        else
        {
            ascii[i % 16] = '.';
        }
        if ((i + 1) % 8 == 0 || i + 1 == size)
        {
            printf(" ");
            if ((i + 1) % 16 == 0)
            {
                printf("|  %s \n", ascii);
            }
            else if (i + 1 == size)
            {
                ascii[(i + 1) % 16] = '\0';
                if ((i + 1) % 16 <= 8)
                {
                    printf(" ");
                }
                for (j = (i + 1) % 16; j < 16; ++j)
                {
                    printf("   ");
                }
                printf("|  %s \n", ascii);
            }
        }
    }
}

// https://en.wikipedia.org/wiki/Master_boot_record#Partition_table_entries
struct __attribute__((__packed__)) partition
{
    // Boot flag 0 = Not active, 0x80 = Active
    u_int8_t boot_flag;
    u_int8_t chs_begin[3];
    // Partition type. Example: 82 -> Linux swap, 83 -> Linux native partition, ...
    u_int8_t sys_type;
    u_int8_t chs_end[3];
    u_int32_t start_sector;
    u_int32_t nr_sector;
};

// Mikrotik MBR structure
struct __attribute__((__packed__)) disk
{
    // total 446
    u_int8_t code[256];
    u_int8_t unknown1[12]; // this affect software ID
    u_int32_t boot_count; // 4
    u_int8_t unknown2[64]; // Installed license ?
    u_int8_t unknown3[110]; // null unused ?

    struct partition part[4];
    u_int16_t signature;
    // VBR
    u_int8_t vbr_code1[4]; // cli, ljmp 0x11
    u_int8_t unknown4[5]; // same across install
    u_int8_t unknown5[4]; // differs across install
};

int main(int argc, char **argv)
{

    int fd;
    char *file;
    struct disk disk;
    struct partition *part;

    if (argc <= 1)
    {
        file = "disk.img";
    }
    else
    {
        file = argv[1];
    }

    if ((fd = open(file, O_RDONLY | O_NONBLOCK)) < 0)
    {
        perror("Open");
        exit(1);
    }

    lseek(fd, 0, SEEK_CUR);
    if (read(fd, (void *)(&disk), sizeof(disk)) != sizeof(disk))
    {
        perror("Read");
        close(fd);
        exit(1);
    }

    DumpHex(&disk, sizeof(disk));

    if (disk.signature != 0xaa55)
    {
        perror("Invalid MBR disk signature");
        exit(1);
    }

    printf("Boot count: %d\n", disk.boot_count);

    for (int i = 0; i < 4; i++)
    {
        part = &disk.part[i];

        printf("Partition %d%c: ", i + 1, (part->boot_flag & 0x80) ? '*' : ' ');
        if ((part->chs_begin[0] | part->chs_begin[1] | part->chs_begin[0]) == 0)
        {
            printf(" #n/a ");
        }
        else
        {
            printf(" %02x 0x%08x - 0x%08x | 0x%08x - 0x%08x :  %d MiB",
            part->sys_type,
            part->start_sector, part->nr_sector,
            part->start_sector * 512, part->start_sector * 512 + (part->nr_sector * 512),
            (part->nr_sector * 512) / 1024 / 1024
            );
        }
        printf("\n");
    }

    return 0;
}