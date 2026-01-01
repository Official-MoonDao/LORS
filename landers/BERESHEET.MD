---
id: beresheet
name: Beresheet
provider: SpaceIL
class: Light Logistic
status: Flown (Crash)
physical:
  payload_capacity_kg: 150
  wet_mass_kg: 585
  dry_mass_kg: 150
  dimensions:
    height_m: 1.5
    diameter_m: 2.3
power:
  source: "Top-deck Solar Panels"
  storage: "Li-Ion (Non-rechargeable survival limited)"
comms:
  earth_to_moon:
    band: "S-Band"
    network: "NASA Deep Space Network (DSN) + 7 Ground Stations"
    hardware: "Aitech IBOX Interface"
  wired:
    interfaces: ["I/O Interface Unit"]
---

# Beresheet

## Overview
Beresheet was the first Israeli lunar lander and the first privately funded mission to reach the Moon.

## Communication Systems
Beresheet utilized a hybrid communication infrastructure:
*   **Direct-to-Earth:** S-Band links supported by **NASA's Deep Space Network** and seven worldwide ground stations.
*   **Data Handling:** Managed by the **Aitech IBOX** (I/O Interface Unit), which routed video and telemetry between the main computer and subsystems.

## Mission Phases & Timeline
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Earth Orbit** | ~40 Days | Gradual apogee raising via multiple engine burns. |
| **Lunar Capture** | April 4, 2019 | 6-minute engine burn for elliptical orbit entry. |
| **Surface Ops (Planned)** | ~2 Days | Limited by lack of active thermal control/overheating. |

## Service Modes by Phase
*   **Transit:** Low-duty telemetry and image "selfies".
*   **Descent:** High-rate telemetry for autonomous landing. Critical main engine failure occurred due to an IMU (Inertial Measurement Unit) anomaly.

## Result & Impact
*   **Outcome:** Crash-landed on April 11, 2019 (Sea of Serenity) at ~3,000 km/h.
*   **Legacy:** Validated the capability of a small private team to reach the Moon for ~$100M. Carried a NASA laser retroreflector (passive for decades) and a Lunar Library (Arch Mission).

## Resources
*   [SpaceIL Mission Page](https://www.spaceil.com/)
