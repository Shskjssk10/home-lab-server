# Phase 1: Hardware & Physical Setup

## Objectives
- [ ] Source all components
- [ ] Perform stress tests and verification (OCCT, CrystalDiskMark etc.)
- [ ] Verify BIOS/UEFI settings

## Sourcing

The objective for this build was to create a versatile, cost-effective "Powerhouse" node capable of handling a diverse learning stack. Sourcing the majority of these components was done through Carousell, specifically targeting sellers offloading mid-range gaming hardware to stay within a "value-per-dollar" sweet spot.

The criterias were as follows: 
* **Compute Power:** Possess multiple cores and threads for multi-tasking and hosting multiple containers
* **Memory:** Possess large RAM for multiple containers and hosting of services
* **Video Graphics:** Comes with a GPU to execute minor AI capabilities such as face recognition in Immich
* **Power:** Comes with a trustworthy and reliable power supply unit for 24/7 availability 


## Verification & Testing
### 1. Stability & Thermal Stress Tests
| Component | Tool Used | Duration | Results / Max Temps |
| :--- | :--- | :--- | :--- |
| **CPU+RAM** | **OCCT** | 1 Hour | Stable; Max CPU Temp: **72°C** |
| **Power** | **OCCT** | 1 Hour | Stable; Max CPU Temp: **72°C** |
| **GPU (VRAM)** | **OCCT** | 30 Mins | No artifacts; Max Temp: **75°C** |
| **GPU (3D Adaptive)** | **OCCT** | 30 Mins | No artifacts; Max Temp: **75°C** |
| **Memory** | **OCCT** | 30 Mins | 0 Errors; RAM verified at 3000MHz |
| **Storage (Boot)** | **CrystalDiskMark** | 4 Runs / 1GiB | Stable; Up to Standard |
| **Storage (Data)** | **CrystalDiskMark** | 4 Runs / 1GiB | Stable; Up to Standard |
| **Storage (Boot)** | **CrystalDiskInfo** | NA | 93% Healthy |
| **Storage (Data)** | **CrystalDiskInfo** | NA | 100% Healthy |

### 2. Component Verification
I used the following tools to confirm that the hardware specifications matched the seller's description and that the firmware was up to date:
* **CPU-Z:** Verified Ryzen 5 3600 clock speeds and confirmed the MSI B450 is running the latest AGESA firmware for stability.
* **GPU-Z:** Confirmed the GTX 1060 is a genuine 6GB model and checked UEFI support for future virtualization/passthrough tasks.
* **HWMonitor:** Logged voltage rails on the Cooler Master PSU to ensure no significant sagging under load.

---
[⬅ Back to Main README](../README.md)