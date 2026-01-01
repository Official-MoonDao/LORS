---
id: lupex_lander
name: LUPEX Lander
provider: ISRO
class: Science
status: Planned
physical:
  rover_capacity_kg: 350
  launch_mass_kg: 6000
  dry_mass_kg: 1051
  target: "Lunar South Pole (High-Latitude)"
power:
  source: "Solar (optimized for low-angle polar sun)"
comms:
  earth_to_moon:
    band: "S-Band"
    network: "ISRO Ground Station Network (ISTRAC) / JAXA support"
  wired:
    interfaces: ["JAXA/ISRO standard umbilical"]
  wireless:
    type: "Lander-to-Rover Relay"
---

# LUPEX Lander

## Overview
The LUPEX Lander is being developed by ISRO (India) to deliver the Japanese (JAXA) LUPEX Rover to the south pole.

## Communication Systems
The LUPEX lander acts as the primary data hub for the mission:
*   **Earth-to-Moon:** Utilizes **S-Band** links to ISRO's ISTRAC network, with backup tracking support from JAXA and potentially ESA.
*   **Surface Networking:** Facilitates a robust wireless link (Wi-Fi/S-Band) to the **LUPEX Rover** for real-time telemetry and command routing.

## Mission Phases & Timeline
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Lunar Transfer** | ~1 Month | Direct or multi-burn orbit raising via H3 launcher. |
| **Descent (Powered)** | ~15 Minutes | High-precision landing using SLIM-derived landmark navigation. |
| **Surface Ops** | ~100 - 350 Days | Designed to survive polar lighting and short shadows. |

## Service Modes by Phase
*   **Transit:** Standard payload heartbeat and thermal management.
*   **Descent:** Critical phase using the re-engineered LPSC main engine.
*   **Surface:** Primary role as the power and data relay base for the JAXA rover.

## Key Features
*   **Precision Navigation:** Employs a feature matching algorithm and navigational equipment inherited from the **SLIM** mission for pinpoint accuracy.
*   **Propulsion:** Features a new, high-efficiency engine developed by the **Liquid Propulsion Systems Centre (LPSC)**.
*   **Polar Optimization:** The lander structure and solar panels are specifically configured to operate in the challenging, low-sun-angle environment of the South Pole.
