---
layout: page
title: Linux中的各种硬件装置对应的文件名
tags: 
 - linux
---
在Linux系统中，一切皆文件。硬件设备也不例外，所有的硬件设备都被当作一个文件来对待，包括硬盘，软盘，鼠标等。针对每个不用类型的设备文件，都有对应的文件名称。详细见下表：

| 装置 | 装置在Linux中的文件名 |
| :------: | :------: |
| SCSI/SATA/移动硬盘 | /dev/sd[a-p] |
| USB闪存盘 | /dev/sd[a-p]（与SATA相同） |
| VirtI/O界面 | /dev/vd[a-p]（用于虚拟机内） |
| 软盘驱动器 | /dev/fd[0-7] |
| 打印机 | /dev/lp[0-2]（25针打印机）<br> /dev/usb/lp[0-15]（usb界面） |
| 鼠标 | /dev/input/mouse[0-15]（通用）<br> /dev/psaux（PS/2界面）<br> /dev/mouse（当前鼠标） |
| CDROM/DVDROM | /dev/scd[0-1]（通用）<br> /dev/sr[0-1]（通用，CentOS较常见）<br> /dev/cdrom（当前CDROM） |
| 磁带机 | /dev/ht0（IDE界面）<br> /dev/st0（SATA/SCSI界面）<br> /dev/tape（当前磁带） |
| IDE硬盘 | /dev/hd[a-d]（旧系统才有） |

**“[]”中的表示取值范围。**

**目前，市场上的IDE硬盘已经很少见了，很多IDE磁盘的文件名也都仿叫/dev/sd[a-p]了。**
