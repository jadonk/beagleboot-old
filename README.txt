This project is to create a simple GUI bootloader for the BeagleBoard,
BeagleBoard-xM and BeagleBone.  Other embedded Linux platforms might
get additional benefit from the project.

General abilities:
* Detect a board (or boards) connected via USB and their type
* Determine/assign any associated serial port
* Examine/download the latest released image and tarballs on-line
* Bootload USB MSC firmware to the target board
* Determine the path to the MSC drive provided by the target board
* Perform sector-level accesses to MSC drive including
  - image writing ('dd')
  - partitioning ('libparted')
* Monitor board boot status and provide logs for support
* Provide a simple terminal shell
* Provide a device aware browser for web applications
* Perform any low-level tasks, such as hardware reboot

This is currently envisioned as being a Qt application utilizing
'libusb' and 'libparted' running on recent versions of Mac, Linux
and Windows operating systems, as well as a host BeagleBoard.

Command-line operation is a requirement, but the focus will be
on providing an easy-to-use GUI that brings usability issues into
a single application where the community can attack/solve issues.
