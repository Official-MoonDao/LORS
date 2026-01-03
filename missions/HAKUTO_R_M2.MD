---
mission_id: hakuto-r-m2
name: HAKUTO-R M2
lander_id: hakuto-r
payload_ids:
  - tenacious
  - water-electrolyzer
  - food-production
  - dsrp-radiation
  - gundam-alloy-plate
  - unesco-disk
  - moonhouse
launch_date: 2025-01-15
status: Hard Landing
target_site: Mare Frigoris
---

# HAKUTO-R M2 (SMBC x HAKUTO-R Venture Moon)

## Overview
Technology demonstration mission using the **RESILIENCE** lander, aimed at verifying improved landing software and deploying the TENACIOUS micro-rover.

## Details
*   **Lander:** [HAKUTO-R (Series 1)](../landers/HAKUTO_R.MD)
*   **Launch:** January 15, 2025, via SpaceX Falcon 9.
*   **Connectivity:** 
    *   **Direct-to-Earth:** X-Band via ESA Estrack.
    *   **Surface Relay:** Highly stable X-Band link demonstrated during cruise (intended for rover relay).
*   **Payloads:**
    *   **[TENACIOUS](../rovers/TENACIOUS.MD)** (Micro Rover) - ispace Europe.
    *   **Water Electrolyzer** - Takasago Thermal Engineering.
    *   **Food Production** - Euglena Co.
    *   **DSRP** (Deep Space Radiation Probe) - NCU Taiwan (Verified nominal telemetry during cruise).
    *   **Gundam Alloy Plate** - Bandai Namco.
    *   **Memory Disk** - UNESCO.
*   **Status:** **Hard Landing (June 6, 2025 JST)**. Analysis identified a hardware anomaly in the **Laser Range Finder (LRF)**. 
    *   **The Anomaly:** The LRF did not provide valid altitude measurements until the lander was below **900 meters**, far later than the designed operational altitude of **3,000 meters**.
    *   **Impact:** Due to the sensor delay, the lander attempted final deceleration while traveling at **66 m/s** (planned: **44 m/s**). Telemetry confirmed the lander was still descending at **42 m/s** at an altitude of only **192 meters**, leading to a high-velocity impact on the lunar surface.

## Resources
*   [ispace Mission 2 Anomaly Report](https://ispace-inc.com/news/?p=4654)
*   [ispace HAKUTO-R Program](https://ispace-inc.com/hakuto-r/)
