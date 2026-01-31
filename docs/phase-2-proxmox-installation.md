# Phase 1: Proxmox Installation & Set Up

## Objectives
- [ ] Configure BIOS to optimum settings
- [ ] Install Promox 

## 1. Configuring Motherboard

Converting the PC into a 24/7 available server requires its settings to be built for it. The following has been done to ensure that the BIOS settings has been optimised to prevent future headaches:

| Category | Setting Name | Target Value | Location (MSI BIOS) | Why? |
| :--- | :--- | :--- | :--- | :--- |
| **CPU** | **SVM Mode** | **Enabled** | Overclocking \> CPU Features | **Critical.** Enables AMD hardware virtualization for K3s, Docker, and VMs. |
| **CPU** | **PSS Support** | **Enabled** | Overclocking \> CPU Features | Allows the CPU to downclock when idle to save power and reduce heat. |
| **Power** | **Global C-state Control** | **Enabled** | Overclocking \> CPU Features | Essential for power saving; lets the CPU enter deep sleep states. |
| **Power** | **Restore on AC Power Loss** | **Power On** | Settings \> Advanced \> Power Mgmt | Ensures the server reboots automatically after a power outage. |
| **Boot** | **Fast Boot** | **Disabled** | Settings \> Boot | Prevents skipping USB initialization; necessary for troubleshooting/recovery. |
| **Boot** | **Boot Mode Select** | **UEFI** | Settings \> Boot | The modern standard for Linux distros and large storage volumes. |
| **Memory** | **A-XMP** | **Profile 1** | Main OC Page | Ensures the RAM runs at the rated 3000 MHz instead of the 2133 MHz default. |
| **Security** | **Secure Boot** | **Disabled** | Settings \> Security | Prevents "unsigned" kernel issues when installing specific Linux distros. |
| **Advanced** | **Above 4G Decoding** | **Enabled** | Settings \> Advanced \> PCIe | Optimizes GPU memory addressing for future AI or Transcoding tasks. |

## 2. Installing Proxmox

---
[⬅ Back to Main README](../README.md)