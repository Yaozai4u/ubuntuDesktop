Computer: Lenovo ThinkPad Edge S430 (3364)



Battery pack removal and installation
http://support.lenovo.com/en_US/product-and-parts/detail.page?DocID=PD024457
Hard disk drive or solid-state drive removal and installation - ThinkPad Edge S$
http://support.lenovo.com/en_US/product-and-parts/detail.page?&DocID=PD024447
Keyboard removal and installation
http://support.lenovo.com/en_US/product-and-parts/detail.page?&DocID=PD024448
LCD panel removal and installation
http://support.lenovo.com/en_US/product-and-parts/detail.page?DocID=PD024462
Keyboard bezel removal and installation
http://support.lenovo.com/en_US/product-and-parts/detail.page?&DocID=PD024454
LCD bezel removal and installation
http://support.lenovo.com/en_US/product-and-parts/detail.page?&DocID=PD024461
System board and thermal fan removal and installation
http://support.lenovo.com/en_US/product-and-parts/detail.page?DocID=PD024458


Techspes

http://shop.lenovo.com/se/en/laptops/thinkpad/s-series/s430/#techspecs

sudo dmidecode --type memory
# dmidecode 2.12
# SMBIOS entry point at 0x9ae9e000
SMBIOS 2.7 present.

Handle 0x000B, DMI type 16, 23 bytes
Physical Memory Array
	Location: System Board Or Motherboard
	Use: System Memory
	Error Correction Type: None
	Maximum Capacity: 16 GB
	Error Information Handle: Not Provided
	Number Of Devices: 2

Handle 0x000C, DMI type 17, 34 bytes
Memory Device
	Array Handle: 0x000B
	Error Information Handle: Not Provided
	Total Width: 64 bits
	Data Width: 64 bits
	Size: 4096 MB
	Form Factor: SODIMM
	Set: None
	Locator: ChannelA-DIMM0
	Bank Locator: BANK 0
	Type: DDR3
	Type Detail: Synchronous
	Speed: 1600 MHz
	Manufacturer: 04EF
	Serial Number: 00000000
	Asset Tag: None
	Part Number: Team--Elite-1600  
	Rank: Unknown
	Configured Clock Speed: 1600 MHz

Handle 0x000D, DMI type 17, 34 bytes
Memory Device
	Array Handle: 0x000B
	Error Information Handle: Not Provided
	Total Width: 64 bits
	Data Width: 64 bits
	Size: 4096 MB
	Form Factor: SODIMM
	Set: None
	Locator: ChannelB-DIMM0
	Bank Locator: BANK 2
	Type: DDR3
	Type Detail: Synchronous
	Speed: 1600 MHz
	Manufacturer: Samsung
	Serial Number: E1CA326A
	Asset Tag: None
	Part Number: M471B5273DH0-CK0  
	Rank: Unknown
	Configured Clock Speed: 1600 MHz
# sudo lshw 
shs430
    description: Notebook
    product: 3364A16 (LENOVO_MT_3364A16)
    vendor: LENOVO
    version: ThinkPad Edge S430
    serial: MP12P0A
    width: 64 bits
    capabilities: smbios-2.7 dmi-2.7 vsyscall32
    configuration: administrator_password=disabled chassis=notebook family=ThinkPad Edge S430 power-on_password=disabled sku=LENOVO_MT_3364A16 uuid=010A6318-5652-CB11-AD7A-8EF84A4BF9AB
  *-core
       description: Motherboard
       product: 3364A16
       vendor: LENOVO
       physical id: 0
       version: Not Available
       serial: ------------
       slot: Not Available
     *-cpu
          description: CPU
          product: Intel(R) Core(TM) i5-3210M CPU @ 2.50GHz
          vendor: Intel Corp.
          physical id: 5
          bus info: cpu@0
          version: Intel(R) Core(TM) i5-3210M CPU @ 2.50GHz
          serial: None
          slot: CPU Socket - U3E1
          size: 2500MHz
          capacity: 2500MHz
          width: 64 bits
          clock: 100MHz
          capabilities: x86-64 fpu fpu_exception wp vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms cpufreq
          configuration: cores=2 enabledcores=2 threads=4
        *-cache:0
             description: L1 cache
             physical id: 7
             slot: L1-Cache
             size: 32KiB
             capacity: 32KiB
             capabilities: internal write-through instruction
        *-cache:1
             description: L2 cache
             physical id: 8
             slot: L2-Cache
             size: 256KiB
             capacity: 256KiB
             capabilities: internal write-through unified
        *-cache:2
             description: L3 cache
             physical id: 9
             slot: L3-Cache
             size: 3MiB
             capacity: 3MiB
             capabilities: internal write-back unified
     *-cache
          description: L1 cache
          physical id: 6
          slot: L1-Cache
          size: 32KiB
          capacity: 32KiB
          capabilities: internal write-through data
     *-memory
          description: System Memory
          physical id: b
          slot: System board or motherboard
          size: 8GiB
        *-bank:0
             description: SODIMM DDR3 Synchronous 1600 MHz (0.6 ns)
             product: Team--Elite-1600
             vendor: Fujitsu
             physical id: 0
             serial: 00000000
             slot: ChannelA-DIMM0
             size: 4GiB
             width: 64 bits
             clock: 1600MHz (0.6ns)
        *-bank:1
             description: SODIMM DDR3 Synchronous 1600 MHz (0.6 ns)
             product: M471B5273DH0-CK0
             vendor: Samsung
             physical id: 1
             serial: E1CA326A
             slot: ChannelB-DIMM0
             size: 4GiB
             width: 64 bits
             clock: 1600MHz (0.6ns)
     *-firmware
          description: BIOS
          vendor: LENOVO
          physical id: 0
          version: GAET94WW (2.54 )
          date: 04/24/2013
          size: 128KiB
          capacity: 11MiB
          capabilities: pci pnp upgrade shadowing cdboot bootselect edd int13floppy720 int5printscreen int9keyboard int14serial int17printer int10video acpi usb biosbootspecification uefi
     *-pci
          description: Host bridge
          product: 3rd Gen Core processor DRAM Controller
          vendor: Intel Corporation
          physical id: 100
          bus info: pci@0000:00:00.0
          version: 09
          width: 32 bits
          clock: 33MHz
        *-pci:0
             description: PCI bridge
             product: Xeon E3-1200 v2/3rd Gen Core processor PCI Express Root Port
             vendor: Intel Corporation
             physical id: 1
             bus info: pci@0000:00:01.0
             version: 09
             width: 32 bits
             clock: 33MHz
             capabilities: pci pm msi pciexpress normal_decode bus_master cap_list
             configuration: driver=pcieport
             resources: irq:40 ioport:4000(size=4096) memory:c2000000-c30fffff ioport:a0000000(size=570425344)
           *-generic UNCLAIMED
                description: Unassigned class
                product: Illegal Vendor ID
                vendor: Illegal Vendor ID
                physical id: 0
                bus info: pci@0000:01:00.0
                version: ff
                width: 32 bits
                clock: 66MHz
                capabilities: bus_master vga_palette cap_list
                configuration: latency=255 maxlatency=255 mingnt=255
                resources: memory:c2000000-c2ffffff memory:a0000000-bfffffff memory:c0000000-c1ffffff ioport:4000(size=128) memory:c3000000-c307ffff
        *-display
             description: VGA compatible controller
             product: 3rd Gen Core processor Graphics Controller
             vendor: Intel Corporation
             physical id: 2
             bus info: pci@0000:00:02.0
             version: 09
             width: 64 bits
             clock: 33MHz
             capabilities: msi pm vga_controller bus_master cap_list rom
             configuration: driver=i915 latency=0
             resources: irq:46 memory:c3400000-c37fffff memory:d0000000-dfffffff ioport:5000(size=64)
        *-usb:0
             description: USB controller
             product: 7 Series/C210 Series Chipset Family USB xHCI Host Controller
             vendor: Intel Corporation
             physical id: 14
             bus info: pci@0000:00:14.0
             version: 04
             width: 64 bits
             clock: 33MHz
             capabilities: pm msi xhci bus_master cap_list
             configuration: driver=xhci_hcd latency=0
             resources: irq:41 memory:c5b00000-c5b0ffff
        *-communication
             description: Communication controller
             product: 7 Series/C210 Series Chipset Family MEI Controller #1
             vendor: Intel Corporation
             physical id: 16
             bus info: pci@0000:00:16.0
             version: 04
             width: 64 bits
             clock: 33MHz
             capabilities: pm msi bus_master cap_list
             configuration: driver=mei_me latency=0
             resources: irq:45 memory:c5b15000-c5b1500f
        *-usb:1
             description: USB controller
             product: 7 Series/C210 Series Chipset Family USB Enhanced Host Controller #2
             vendor: Intel Corporation
             physical id: 1a
             bus info: pci@0000:00:1a.0
             version: 04
             width: 32 bits
             clock: 33MHz
             capabilities: pm debug ehci bus_master cap_list
             configuration: driver=ehci-pci latency=0
             resources: irq:16 memory:c5b1a000-c5b1a3ff
        *-multimedia
             description: Audio device
             product: 7 Series/C210 Series Chipset Family High Definition Audio Controller
             vendor: Intel Corporation
             physical id: 1b
             bus info: pci@0000:00:1b.0
             version: 04
             width: 64 bits
             clock: 33MHz
             capabilities: pm msi pciexpress bus_master cap_list
             configuration: driver=snd_hda_intel latency=0
             resources: irq:48 memory:c5b10000-c5b13fff
        *-pci:1
             description: PCI bridge
             product: 7 Series/C210 Series Chipset Family PCI Express Root Port 1
             vendor: Intel Corporation
             physical id: 1c
             bus info: pci@0000:00:1c.0
             version: c4
             width: 32 bits
             clock: 33MHz
             capabilities: pci pciexpress msi pm normal_decode bus_master cap_list
             configuration: driver=pcieport
             resources: irq:16 memory:c5a00000-c5afffff
           *-generic
                description: Unassigned class
                product: RTS5229 PCI Express Card Reader
                vendor: Realtek Semiconductor Co., Ltd.
                physical id: 0
                bus info: pci@0000:02:00.0
                version: 01
                width: 32 bits
                clock: 33MHz
                capabilities: pm msi pciexpress bus_master cap_list
                configuration: driver=rtsx_pci latency=0
                resources: irq:42 memory:c5a00000-c5a00fff
        *-pci:2
             description: PCI bridge
             product: 7 Series/C210 Series Chipset Family PCI Express Root Port 2
             vendor: Intel Corporation
             physical id: 1c.1
             bus info: pci@0000:00:1c.1
             version: c4
             width: 32 bits
             clock: 33MHz
             capabilities: pci pciexpress msi pm normal_decode bus_master cap_list
             configuration: driver=pcieport
             resources: irq:17 ioport:3000(size=4096) memory:c5100000-c59fffff ioport:c3800000(size=8388608)
           *-network
                description: Wireless interface
                product: Centrino Wireless-N 2230
                vendor: Intel Corporation
                physical id: 0
                bus info: pci@0000:03:00.0
                logical name: wlan0
                version: c4
                serial: 68:5d:43:cd:aa:8c
                width: 64 bits
                clock: 33MHz
                capabilities: pm msi pciexpress bus_master cap_list ethernet physical wireless
                configuration: broadcast=yes driver=iwlwifi driverversion=3.13.0-26-generic firmware=18.168.6.1 latency=0 link=no multicast=yes wireless=IEEE 802.11bgn
                resources: irq:47 memory:c5100000-c5101fff
        *-pci:3
             description: PCI bridge
             product: 7 Series/C210 Series Chipset Family PCI Express Root Port 4
             vendor: Intel Corporation
             physical id: 1c.3
             bus info: pci@0000:00:1c.3
             version: c4
             width: 32 bits
             clock: 33MHz
             capabilities: pci pciexpress msi pm normal_decode bus_master cap_list
             configuration: driver=pcieport
             resources: irq:19 ioport:2000(size=4096) memory:c4900000-c50fffff ioport:c4000000(size=9437184)
           *-network
                description: Ethernet interface
                product: RTL8111/8168/8411 PCI Express Gigabit Ethernet Controller
                vendor: Realtek Semiconductor Co., Ltd.
                physical id: 0
                bus info: pci@0000:04:00.0
                logical name: eth0
                version: 07
                serial: b8:88:e3:35:05:59
                size: 100Mbit/s
                capacity: 1Gbit/s
                width: 64 bits
                clock: 33MHz
                capabilities: pm msi pciexpress msix vpd bus_master cap_list ethernet physical tp mii 10bt 10bt-fd 100bt 100bt-fd 1000bt 1000bt-fd autonegotiation
                configuration: autonegotiation=on broadcast=yes driver=r8169 driverversion=2.3LK-NAPI duplex=full firmware=rtl8168e-3_0.0.4 03/27/12 ip=10.2.55.55 latency=0 link=yes multicast=yes port=MII speed=100Mbit/s
                resources: irq:43 ioport:2000(size=256) memory:c4004000-c4004fff memory:c4000000-c4003fff
        *-pci:4
             description: PCI bridge
             product: 7 Series/C210 Series Chipset Family PCI Express Root Port 5
             vendor: Intel Corporation
             physical id: 1c.4
             bus info: pci@0000:00:1c.4
             version: c4
             width: 32 bits
             clock: 33MHz
             capabilities: pci pciexpress msi pm normal_decode bus_master cap_list
             configuration: driver=pcieport
             resources: irq:16 ioport:6000(size=32768) memory:e0000000-e7ffffff ioport:e8000000(size=268435456)
        *-usb:2
             description: USB controller
             product: 7 Series/C210 Series Chipset Family USB Enhanced Host Controller #1
             vendor: Intel Corporation
             physical id: 1d
             bus info: pci@0000:00:1d.0
             version: 04
             width: 32 bits
             clock: 33MHz
             capabilities: pm debug ehci bus_master cap_list
             configuration: driver=ehci-pci latency=0
             resources: irq:23 memory:c5b19000-c5b193ff
        *-isa
             description: ISA bridge
             product: HM77 Express Chipset LPC Controller
             vendor: Intel Corporation
             physical id: 1f
             bus info: pci@0000:00:1f.0
             version: 04
             width: 32 bits
             clock: 33MHz
             capabilities: isa bus_master cap_list
             configuration: driver=lpc_ich latency=0
             resources: irq:0
        *-storage
             description: SATA controller
             product: 7 Series Chipset Family 6-port SATA Controller [AHCI mode]
             vendor: Intel Corporation
             physical id: 1f.2
             bus info: pci@0000:00:1f.2
             version: 04
             width: 32 bits
             clock: 66MHz
             capabilities: storage msi pm ahci_1.0 bus_master cap_list
             configuration: driver=ahci latency=0
             resources: irq:44 ioport:5088(size=8) ioport:509c(size=4) ioport:5080(size=8) ioport:5098(size=4) ioport:5060(size=32) memory:c5b18000-c5b187ff
        *-serial UNCLAIMED
             description: SMBus
             product: 7 Series/C210 Series Chipset Family SMBus Controller
             vendor: Intel Corporation
             physical id: 1f.3
             bus info: pci@0000:00:1f.3
             version: 04
             width: 64 bits
             clock: 33MHz
             configuration: latency=0
             resources: memory:c5b14000-c5b140ff ioport:efa0(size=32)
     *-scsi:0
          physical id: 1
          logical name: scsi0
          capabilities: emulated
        *-disk
             description: ATA Disk
             product: HITACHI HTS72505
             vendor: Hitachi
             physical id: 0.0.0
             bus info: scsi@0:0.0.0
             logical name: /dev/sda
             version: GH2Z
             serial: TF1500Y9GP4T3B
             size: 465GiB (500GB)
             capabilities: partitioned partitioned:dos
             configuration: ansiversion=5 sectorsize=4096 signature=6b382922
           *-volume:0
                description: Extended partition
                physical id: 1
                bus info: scsi@0:0.0.0,1
                logical name: /dev/sda1
                size: 354GiB
                capacity: 354GiB
                capabilities: primary extended partitioned partitioned:extended
              *-logicalvolume:0
                   description: Linux filesystem partition
                   physical id: 5
                   logical name: /dev/sda5
                   logical name: /tool
                   capacity: 336GiB
                   configuration: mount.fstype=ext4 mount.options=rw,noatime,errors=remount-ro state=mounted
              *-logicalvolume:1
                   description: Linux swap / Solaris partition
                   physical id: 6
                   logical name: /dev/sda6
                   capacity: 17GiB
                   capabilities: nofs
           *-volume:1
                description: EXT4 volume
                vendor: Linux
                physical id: 2
                bus info: scsi@0:0.0.0,2
                logical name: /dev/sda2
                logical name: /
                version: 1.0
                serial: 4327ebb7-12c5-4a2a-aca2-1bdbe14e06c1
                size: 111GiB
                capacity: 111GiB
                capabilities: primary journaled extended_attributes large_files huge_files dir_nlink recover extents ext4 ext2 initialized
                configuration: created=2014-03-19 21:53:00 filesystem=ext4 label=system lastmountpoint=/ modified=2014-05-16 09:02:07 mount.fstype=ext4 mount.options=rw,noatime,errors=remount-ro mounted=2014-05-16 09:02:07 state=mounted
           *-volume:2
                description: Windows FAT volume
                vendor: mkdosfs
                physical id: 3
                bus info: scsi@0:0.0.0,3
                logical name: /dev/sda3
                logical name: /boot/efi
                version: FAT32
                serial: f11b-4793
                size: 499MiB
                capacity: 500MiB
                capabilities: primary bootable fat initialized
                configuration: FATs=2 filesystem=fat mount.fstype=vfat mount.options=rw,relatime,fmask=0022,dmask=0022,codepage=437,iocharset=iso8859-1,shortname=mixed,errors=remount-ro state=mounted
     *-scsi:1
          physical id: 2
          logical name: scsi1
          capabilities: emulated
        *-disk
             description: ATA Disk
             product: WDC WD10JPVT-08A
             vendor: Western Digital
             physical id: 0.0.0
             bus info: scsi@1:0.0.0
             logical name: /dev/sdb
             version: 01.0
             serial: WD-WXE1CC106362
             size: 931GiB (1TB)
             capabilities: partitioned partitioned:dos
             configuration: ansiversion=5 sectorsize=4096 signature=6b382902
           *-volume
                description: Windows NTFS volume
                physical id: 1
                bus info: scsi@1:0.0.0,1
                logical name: /dev/sdb1
                logical name: /Data
                version: 3.1
                serial: c0200530-366b-8941-bd23-de9c6b8f3848
                size: 931GiB
                capacity: 931GiB
                capabilities: primary ntfs initialized
                configuration: clustersize=4096 created=2012-08-05 10:12:59 filesystem=ntfs label=Data mount.fstype=fuseblk mount.options=rw,nosuid,nodev,relatime,user_id=0,group_id=0,default_permissions,allow_other,blksize=4096 state=mounted
     *-scsi:2
          physical id: 3
          logical name: scsi2
          capabilities: emulated
        *-disk
             description: ATA Disk
             product: SanDisk SSD U100
             physical id: 0.0.0
             bus info: scsi@2:0.0.0
             logical name: /dev/sdc
             version: CS.5
             serial: 122455303961
             size: 14GiB (16GB)
             capabilities: partitioned partitioned:dos
             configuration: ansiversion=5 sectorsize=512 signature=755041fb
           *-volume
                description: EXT4 volume
                vendor: Linux
                physical id: 1
                bus info: scsi@2:0.0.0,1
                logical name: /dev/sdc1
                logical name: /cache
                version: 1.0
                serial: 8897d32b-e06b-44fe-84cd-9eb1d43b4d96
                size: 14GiB
                capacity: 14GiB
                capabilities: primary journaled extended_attributes large_files huge_files dir_nlink recover extents ext4 ext2 initialized
                configuration: created=2014-03-20 21:23:39 filesystem=ext4 label=Cache lastmountpoint=/cache modified=2014-05-16 09:02:08 mount.fstype=ext4 mount.options=rw,noatime,discard,errors=remount-ro mounted=2014-05-16 09:02:08 state=mounted
     *-scsi:3
          physical id: 4
          bus info: usb@3:3.4
          logical name: scsi7
          capabilities: emulated scsi-host
          configuration: driver=usb-storage
        *-disk
             description: SCSI Disk
             physical id: 0.0.0
             bus info: scsi@7:0.0.0
             logical name: /dev/sdd
             size: 14GiB (15GB)
             configuration: sectorsize=512
  *-battery
       product: 45N1087
       vendor: SMP
       physical id: 1
       slot: Rear
       capacity: 48840mWh
       configuration: voltage=14.8V
