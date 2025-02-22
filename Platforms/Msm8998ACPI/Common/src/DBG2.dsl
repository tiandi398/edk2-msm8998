/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20200925 (64-bit version)
 * Copyright (c) 2000 - 2020 Intel Corporation
 * 
 * Disassembly of DBG2.aml, Tue May  2 20:07:05 2023
 *
 * ACPI Data Table [DBG2]
 *
 * Format: [HexOffset DecimalOffset ByteLength]  FieldName : FieldValue
 */

[000h 0000   4]                    Signature : "DBG2"    [Debug Port table type 2]
[004h 0004   4]                 Table Length : 00000154
[008h 0008   1]                     Revision : 01
[009h 0009   1]                     Checksum : 00     /* Incorrect checksum, should be 56 */
[00Ah 0010   6]                       Oem ID : "QCOM  "
[010h 0016   8]                 Oem Table ID : "QCOMEDK2"
[018h 0024   4]                 Oem Revision : 00008998
[01Ch 0028   4]              Asl Compiler ID : "QCOM"
[020h 0032   4]        Asl Compiler Revision : 00000001

[024h 0036   4]                  Info Offset : 0000002C
[028h 0040   4]                   Info Count : 00000002

[02Ch 0044   1]                     Revision : 01
[02Dh 0045   2]                       Length : 0046
[02Fh 0047   1]               Register Count : 01
[030h 0048   2]              Namepath Length : 000A
[032h 0050   2]              Namepath Offset : 0026
[034h 0052   2]              OEM Data Length : 0000 [Optional field not present]
[036h 0054   2]              OEM Data Offset : 0000 [Optional field not present]
[038h 0056   2]                    Port Type : 8000
[03Ah 0058   2]                 Port Subtype : 0009
[03Ch 0060   2]                     Reserved : 0000
[03Eh 0062   2]          Base Address Offset : 0016
[040h 0064   2]          Address Size Offset : 0022

[042h 0066  12]        Base Address Register : [Generic Address Structure]
[042h 0066   1]                     Space ID : 00 [SystemMemory]
[043h 0067   1]                    Bit Width : 20
[044h 0068   1]                   Bit Offset : 00
[045h 0069   1]         Encoded Access Width : 20 [Unknown Width Encoding]
[046h 0070   8]                      Address : 000000000C1B0000

[04Eh 0078   4]                 Address Size : 00001000

[052h 0082  10]                     Namepath : "\_SB.UARD"

[072h 0114   1]                     Revision : 01
[073h 0115   2]                       Length : 00E2
[075h 0117   1]               Register Count : 02
[076h 0118   2]              Namepath Length : 000A
[078h 0120   2]              Namepath Offset : 0036
[07Ah 0122   2]              OEM Data Length : 008C
[07Ch 0124   2]              OEM Data Offset : 0056
[07Eh 0126   2]                    Port Type : 8003
[080h 0128   2]                 Port Subtype : 5143
[082h 0130   2]                     Reserved : 0000
[084h 0132   2]          Base Address Offset : 0016
[086h 0134   2]          Address Size Offset : 002E

[088h 0136  12]        Base Address Register : [Generic Address Structure]
[088h 0136   1]                     Space ID : 00 [SystemMemory]
[089h 0137   1]                    Bit Width : 20
[08Ah 0138   1]                   Bit Offset : 00
[08Bh 0139   1]         Encoded Access Width : 20 [Unknown Width Encoding]
[08Ch 0140   8]                      Address : 000000000A800000


[094h 0148  12]        Base Address Register : [Generic Address Structure]
[094h 0148   1]                     Space ID : 00 [SystemMemory]
[095h 0149   1]                    Bit Width : 20
[096h 0150   1]                   Bit Offset : 00
[097h 0151   1]         Encoded Access Width : 20 [Unknown Width Encoding]
[098h 0152   8]                      Address : 000000000C012200

[0A0h 0160   4]                 Address Size : 000FFFFF
[0A4h 0164   4]                 Address Size : 000000A8

[0A8h 0168  10]                     Namepath : "\_SB.URS0"
[0C8h 0200 140]                     OEM Data : \
    05 00 00 00 32 58 49 46 03 00 00 00 01 02 00 00 \
    10 00 00 00 00 00 00 00 22 00 00 00 00 02 00 00 \
    00 C7 00 00 F8 FF FF FF 00 00 00 00 00 02 00 00 \
    10 88 0F 00 00 00 00 00 00 00 10 10 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 \
    00 00 00 00 00 00 00 00 00 00 00 00 

Raw Table Data: Length 340 (0x154)

    0000: 44 42 47 32 54 01 00 00 01 00 51 43 4F 4D 20 20  // DBG2T.....QCOM  
    0010: 51 43 4F 4D 45 44 4B 32 98 89 00 00 51 43 4F 4D  // QCOMEDK2....QCOM
    0020: 01 00 00 00 2C 00 00 00 02 00 00 00 01 46 00 01  // ....,........F..
    0030: 0A 00 26 00 00 00 00 00 00 80 09 00 00 00 16 00  // ..&.............
    0040: 22 00 00 20 00 20 00 00 1B 0C 00 00 00 00 00 10  // ".. . ..........
    0050: 00 00 5C 5F 53 42 2E 55 41 52 44 00 00 00 00 00  // ..\_SB.UARD.....
    0060: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0070: 00 00 01 E2 00 02 0A 00 36 00 8C 00 56 00 03 80  // ........6...V...
    0080: 43 51 00 00 16 00 2E 00 00 20 00 20 00 00 80 0A  // CQ....... . ....
    0090: 00 00 00 00 00 20 00 20 00 22 01 0C 00 00 00 00  // ..... . ."......
    00A0: FF FF 0F 00 A8 00 00 00 5C 5F 53 42 2E 55 52 53  // ........\_SB.URS
    00B0: 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // 0...............
    00C0: 00 00 00 00 00 00 00 00 05 00 00 00 32 58 49 46  // ............2XIF
    00D0: 03 00 00 00 01 02 00 00 10 00 00 00 00 00 00 00  // ................
    00E0: 22 00 00 00 00 02 00 00 00 C7 00 00 F8 FF FF FF  // "...............
    00F0: 00 00 00 00 00 02 00 00 10 88 0F 00 00 00 00 00  // ................
    0100: 00 00 10 10 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0110: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0120: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0130: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0140: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  // ................
    0150: 00 00 00 00                                      // ....
