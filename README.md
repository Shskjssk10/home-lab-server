# My Homelab Documentation

This repository serves as a living document of the network configuration, hardware specs, and self-hosted services.

## Objectives
- [ ] Learn to outsource and compare hardware, assessing value-to-dollar across different listings
- [ ] Back-up images and videos from mobile phone
- [ ] Provide a NAS service within the family, recover old photos from previously used HDDs
- [ ] Estbalish remote connection to server
- [ ] Familarise Docker and Kubernetes technologies
- [ ] Set up monitoring capabilities for performance assessment
- [ ] Configure back-up solutions
- [ ] Learn cloud engineering and devops concepts such as redundancy and availability

## Project Roadmap
Each phase represents a milestone in the lab's evolution.

| Phase | Status | Description | Link |
| :--- | :--- | :--- | :--- |
| **Phase 1** | ✅ Complete | Hardware Inventory & Initial Boot | [View Phase 1](./docs/phase-1-hardware.md) |
| **Phase 2** | ✅ Complete | Proxmox Installation & Set Up | [View Phase 2](./docs/phase-2-proxmox-installation.md) |
| **Phase 3** | ⏳ Planning | Docker Containers & Media Stack | TBD |

## Hardware

This is the hardware that the server will be running on:

| Component | Part / Model | Notes |
| :--- | :--- | :--- |
| **CPU** | AMD Ryzen 5 3600 | 6 Cores / 12 Threads |
| **GPU** | ASUS GeForce GTX 1060 | 6GB Dual-Fan (For Transcoding/Passthrough) |
| **Motherboard** | MSI B450 Tomahawk MAX | Updated BIOS for Ryzen 3000 |
| **RAM** | 16GB (2x 8GB) DDR4 | 3000 MHz, CL16 |
| **Storage (Boot)** | 500GB Samsung 860 EVO | SATA SSD |
| **Storage (Data)** | 2TB Seagate BarraCuda | 7200 RPM HDD |
| **Cooling** | CoolerMaster Hyper 212 | Air Tower |
| **PSU** | CM Silent Pro M2 620W | 80+ Bronze |

---

*Last Updated: 2026-01-31*