# Windows-Deployment
ApplyImage.bat</br>
WindowsPE batch file to format and apply windows installation.</br>

## How to use it
Copy install.win file from media and copy it to Windows-Deployment folder.</br>
Boot on a Windows PE environment. And do the following command.</br>
`X:\Windows-Deployment\ApplyImage.bat X:\Windows-Deployment\install.win`</br>
https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive</br>

## Getting ready
You must use the Sysprep /generalize command to generalize a complete Windows installation before you can use the installation for deployment to a new computer, whether you use imaging, hard disk duplication, or another method. Moving or copying a Windows image to a different computer without running the Sysprep /generalize command is not supported.

The hardware must be connected to identical locations and must use the same drivers, and the drivers must have a consistent, unique naming scheme.

<b>Moving or copying a Windows image to a different PC without generalizing the PC is not supported.</b>
</br>
<b>If the hardware is not identical, severe system problems may result.</b>

Types of problems that can occur with a hardware-configuration change
Even seemingly minor changes to the hardware or hardware configuration can cause severe or easily-overlooked problems, such as the following:

- System instability.

- Inability to use some of the basic or extended functionality of a device.

- Extended boot times and extended installation times.

- Misnamed devices in the Devices and Printers folder, Device Manager, and other device-related user interfaces.

- Severe system problems that leave the computer in a non-bootable state. For more information about which devices Windows Setup relies upon to boot, see the Hardware-configuration changes that can cause the system to fail to boot section of this whitepaper

https://docs.microsoft.com/fr-ca/windows-hardware/manufacture/desktop/sysprep--system-preparation--overview

https://docs.microsoft.com/fr-ca/windows-hardware/manufacture/desktop/oem-deployment-of-windows-10-for-desktop-editions

Secure boot is a security standard developed by members of the PC industry to help make sure that a device boots using only software that is trusted by the Original Equipment Manufacturer (OEM). When the PC starts, the firmware checks the signature of each piece of boot software, including UEFI firmware drivers (also known as Option ROMs), EFI applications, and the operating system. If the signatures are valid, the PC boots, and the firmware gives control to the operating system.

https://docs.microsoft.com/fr-ca/windows-hardware/design/device-experiences/oem-secure-boot

https://docs.microsoft.com/fr-ca/windows/threat-protection/secure-the-windows-10-boot-process
