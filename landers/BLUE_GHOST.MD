---
id: blue_ghost
name: Blue Ghost
provider: Firefly Aerospace
class: Light Logistic
status: Active (Proven)
physical:
  payload_capacity_kg: 155 # Max capacity to surface (TLI launch)
  height_m: 2.0
  width_m: 3.5
  mounting_options:
    - option_1: "Small/Internal (10 kg max, 38x13x23 cm) - Rad-hard/Archives"
    - option_2: "External Top/Side (30 kg max, 115x31x35 cm) - Spectrometers/Cameras"
    - option_3: "Bottom Deck Deployment (30 kg max, 69x45x50 cm) - Rovers/Drills"
    - option_4: "Heavy Deployment (50 kg max, 69x45x65 cm) - Large Rovers/Excavators"
power:
  surface_power_w: "450 W Nominal / 650 W Peak (Total Allocation)"
  payload_allocation_w: "300 W (Avg. Commercial Allocation)"
  source: "Solar (Fixed 3-panel for equatorial; 1-axis gimballed for polar)"
  voltage: "28 VDC (Nominal)"
comms:
  earth_to_moon:
    band: ["X-Band (High Bandwidth science)", "S-Band (TT&C/Ranging)"]
    data_rate: "10 Mbps Peak / 6 Mbps Avg (Surface); 2-15 kbps (Transit)"
    network: "Swedish Space Corporation (SSC)"
  wired:
    interfaces: ["Standard electrical/data interface", "Secure SDG (Satellite Data Gateway)"]
  wireless:
    standard: "Wi-Fi (802.11 internal/local network for rovers)"
    frequency: "2.4 GHz"
---

# Blue Ghost

## Overview
Firefly Aerospace's Blue Ghost lander is a high-performance, light-to-medium class lunar vehicle selected for NASA’s Commercial Lunar Payload Services (CLPS) program. Designed with a "simple/soonest" philosophy, it prioritizes reliable, low-cost access to the lunar surface using heritage-derived systems from Firefly’s launch vehicle programs. All mission operations are conducted from Firefly's Mission Control in **Austin, Texas**.

## Service Pricing & Awards
*   **Mission 1 Award:** $93.3 Million (NASA CLPS Task Order 19D).
*   **Commercial Availability:** Open for secondary and primary payloads beyond NASA requirements.
*   **Remaining Baseline:** 50 kg of commercial capacity available for Mission 1.

## Payload Capacity & Mounting
Blue Ghost offers flexible mass delivery depending on the launch profile:

| Launch Profile | Payload to Surface | Payload to LLO | Total Capacity |
| :--- | :--- | :--- | :--- |
| **Super GTO** | 81 kg | 20 kg | 101 kg |
| **TLI (Dedicated)**| 150-155 kg | 20 kg | 170-175 kg |

### Mounting Configurations
*   **Option 1:** [38×13×23 cm] — 10 kg max. (Internal/Below top deck). Typical: Radiation measurement, archives, time capsules.
*   **Option 2:** [115×31×35 cm] — 30 kg max. (Above bottom deck). Typical: Spectrometers, cameras, horizon FoV instruments.
*   **Option 3:** [69×45×50 cm] — 30 kg max. (Below bottom deck). Typical: Rovers, drills, surface sampling.
*   **Option 4:** [69×45×65 cm] — 50 kg max. (Below bottom deck). Typical: Large rovers, excavators, CubeSat dispensers.

## What’s On Board (Mission 1)
Blue Ghost Mission 1 carried 10 NASA-sponsored science and technology investigations:
1.  **LISTER** (Lunar Instrumentation for Subsurface Thermal Exploration with Rapidity): 2–3 meter thermal probe.
2.  **LPV** (Lunar PlanetVac): Pneumatic regolith sampling technology.
3.  **NGLR** (Next Generation Lunar Retroreflector): High-precision laser ranging target.
4.  **RAC** (Regolith Adherence Characterization): Image-based study of dust accumulation on materials.
5.  **RadPC** (Radiation Tolerant Computer): Fault-tolerant reconfigurable computing demonstration.
6.  **EDS** (Electrodynamic Dust Shield): Active electric field dust mitigation on surfaces.
7.  **LEXI** (Lunar Environment heliospheric X-ray Imager): Captures Earth's magnetosphere from the lunar surface.
8.  **LMS** (Lunar Magnetotelluric Sounder): Measures electric/magnetic fields to study the Moon's mantle.
9.  **LuGRE** (Lunar GNSS Receiver Experiment): First pathfinder for using GPS/Galileo signals on the Moon.
10. **SCALPSS** (Stereo Camera for Lunar Plume-Surface Studies): 6 cameras to create photogrammetric models of engine plume/regolith interaction.

## Technical Systems

### 1. Mechanical & Structural Interfaces
*   **Mounting Method:** Payloads are preferably attached via **inserts** directly to the decks to optimize field of view (FoV) and orientation.
*   **Adapter Plates:** Optional for late-stage integration; provides standard bolt patterns but adds mass/cost.
*   **Cleanliness:** Outgassing and material compatibility (TML/CVCM) are reviewed for every payload.

### 2. Avionics & Command Handling
*   **C&DH System:** Command and Data Handling system with integrated fault protection.
*   **Protocols:** Supports automated execution of **simulator-validated scripts** supplemented by human commanding.
*   **Telemetry:** Real-time housekeeping includes bus voltage, supply current, and command execution acknowledgments.
*   **Storage:** On-board data processing and storage are used to manage operations during communication blackouts.

### 3. Thermal Control Architecture
*   **Strategy:** Payloads are typically **thermally isolated** to ensure maximum environmental control.
*   **Active Systems:** Automated control loops manage **heaters** and duty cycles.
*   **Passive Systems:** Utilizes **Heat Pipes**, **Radiators**, and **Multi-Layer Insulation (MLI)**.
*   **Verification:** Integrated thermal analysis and Thermal Vacuum (TVAC) testing are performed for every integrated mission.

## Communication Systems

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequencies:** 1x **X-Band** (High-bandwidth) and 3x **S-Band** (Telemetry/Ranging).
*   **Performance (Surface):** 10 Mbps peak downlink (6 Mbps average).
*   **Performance (Transit):** 2 kbps average; burstable up to **15 kbps** with periodic HGA usage (2 min/day).
*   **Gateways:** All data passes through the **Satellite Data Gateway (SDG)**; teams access data via secure encrypted **FTP**.

### 2. Wireless (Lander-to-Surface Assets)
*   **Standard:** **Wi-Fi** (802.11).
*   **Range:** Optimized for high-speed local data exchange with deployed rovers or instruments.

## Descent & Landing Technology
*   **Navigation:** Uses **vision-based terrain relative navigation** (TRN) to measure position relative to craters and landmarks.
*   **Hazard Avoidance:** Autonomous detection of slopes and rocks during the final hour of descent.
*   **Soft Landing:** Reaction Control System (RCS) thrusters pulse for controlled deceleration and upright touchdown.

## Environmental Specifications
*Note: Values derived from Condensed PUG and NASA CLPS Press Kit (NP-2025-01-001-JSC); mission-specific values may vary.*

| Factor | Specification / Requirement |
| :--- | :--- |
| **Vibration/Shock** | Qualification per integrated TVAC and vibe testing. |
| **Thermal Vacuum** | Mandatory integrated TVAC testing. |
| **Cleanliness** | ISO-class cleanroom integration; Outgassing BOM review. |
| **EMI/EMC** | Compatibility review with lander and co-payloads. |
| **Outgassing** | NASA Standard review (typically < 1.0% TML / < 0.1% CVCM). |

## Service Mode & Power Matrix
Blue Ghost provides nominal power services across all phases.

| Phase | Nominal Power (W) | Peak Power (W) | Note |
| :--- | :--- | :--- | :--- |
| **Launch Readiness** | 170 | 170 | Ground integration/testing |
| **Launch/Separation** | 10 | 10 | Keep-alive power only |
| **Earth/Lunar Orbit** | 270 | 650 | In-Orbit Testing (IOT) |
| **Lunar Descent** | 301 | 170 | Critical landing phase |
| **Surface Ops** | 450 | 650 | 14-day lunar day baseline |

### Payload Allocation Limits
*   **Transit:** 38 W (Average).
*   **Surface:** 300 W (Average for all commercial PLs).
*   **Per-Payload Peak:** 196 W.

## Operational Autonomy & Polar Resilience
Blue Ghost is uniquely configured for extreme lunar environments:
*   **Solar Configurations:**
    *   **Mid-Latitude:** Three fixed solar arrays (Mission 1 baseline).
    *   **Polar:** Single-axis gimballed solar panel to track the sun at low solar azimuths.
*   **Blackout Survival:** Designed to survive **8–20 days** of communication blackout in polar regions while maintaining autonomous operations.
*   **Autonomy:** On-board processor executes scripts during blackouts; data is stored and downlinks once line-of-sight (LoS) is reestablished. Firefly also captures high-resolution imagery of the lunar sunset/dusk.

## Future Infrastructure
*   **Beta Launch Vehicle:** Dedicated **Trans-Lunar Injection (TLI)** launch capability.
*   **Space Utility Vehicle (SUV):** A solar-electric space tug used for orbital relay and far-side communications, increasing total mass capacity to the surface.

## Missions
*   **Mission 1 (Blue Ghost 1):** Launched Jan 15, 2025 (SpaceX Falcon 9, LC-39A). Successfully landed near **Mons Latreille** in **Mare Crisium** (March 2, 2025). Mare Crisium is a 550km wide basaltic lava basin in the northeast quadrant of the Near Side. Achievement: The first fully successful, upright commercial soft landing. Task Order 19D.
*   **Mission 2 (Blue Ghost 2):** Planned for 2026. Targeting the lunar **Far Side** and Orbit. Includes a communications/data relay satellite (ESA partnership) and LuSEE-night calibration. Task Orders CS-3 and CS-4.
*   **Mission 3 (Blue Ghost 3):** Planned for 2028. Targeting the **Gruithuisen Domes** on the lunar near side. Task Order CP-21.

## Resources
*   [Firefly Blue Ghost Page](https://fireflyspace.com/missions/blue-ghost-mission-1/)
*   [Blue Ghost Payload User Guide (PUG)](https://www.scribd.com/document/907250112/Blue-Ghost-PUG)
*   [NASA CLPS Firefly Mission 1 Press Kit](https://www.nasa.gov/wp-content/uploads/2025/01/np-2025-01-001-jsc-clps-firefly-press-kit-screen-508-1-10-25-final.pdf)
*   [Blue Ghost Datasheet](https://satcatalog.s3.amazonaws.com/components/1105/SatCatalog_-_Firefly_Aerospace_-_Blue_Ghost_-_Datasheet.pdf)
