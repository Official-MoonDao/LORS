---
id: apex_1
name: APEX 1.0
provider: ispace US / Draper
class: Heavy Logistic
status: Planned
physical:
  payload_capacity_kg: 300
  height_m: 3.1
  width_m: 4.5
  wet_mass_kg: 5390
  dry_mass_kg: 1730
power:
  surface_power_w: "High (CLPS-standard allocation)"
comms:
  earth_to_moon:
    band: "X-Band (via Relay)"
    network: "Deep Space Network (DSN)"
    relay: ["Alpine", "Lupine"]
  wired:
    interfaces: ["Standard CLPS interfaces"]
  wireless:
    type: "Lander-to-Rover Relay"
---

# APEX 1.0

## Overview
APEX 1.0 is the lander developed by ispace's US subsidiary (in partnership with Draper) for the CLPS CP-12 mission.

## Communication Systems
APEX 1.0 is specifically hybridized for lunar Far Side operations:

### 1. Earth-to-Moon (Relay-Dependent)
*   **Relay Satellites:** Deploys two dedicated satellites (**Alpine** and **Lupine**) into lunar orbit.
*   **Infrastructure:** Established to support the NASA CP-12 mission at Schrödinger Basin.
*   **Post-Mission:** Relay satellites transition to high circular polar orbits to provide >70% visibility for future South Pole missions.

### 2. Wired & Wireless Interfaces
*   **Interface:** Designed to meet rigorous NASA CLPS integration requirements.
*   **Wireless:** Supports Lander-to-Rover connectivity for micro-rovers (e.g., ispace-Europe rover).

## Mission Phases & Timeline
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~135+ Days | Low-energy trajectory profile. |
| **Relay Deployment** | Pre-Landing | Satellites deployed to ensure telemetry during descent on the Far Side. |
| **Surface Ops** | ~12 Days | Primary science window during lunar daylight. |

## Service Modes by Phase
*   **Cruise:** Telemetry via lander's default antennas.
*   **Descent:** Real-time relay via Alpine/Lupine.
*   **Surface:** High-rate data exchange for seismic and electromagnetic science payloads.

## Key Features
*   **Target:** Schrödinger Basin (Far Side).
*   **Design:** Significantly larger than the Japanese HAKUTO-R Series 1, optimized for payload density and power.

## Missions
*   **APEX 1.0 (Draper CP-12):** Scheduled for 2026, targeting Schrödinger Basin. NASA CLPS Task Order CP-12.

## Resources
*   [APEX 1.0 Page](https://ispace-us.com/apex/)
*   [ispace US Website](https://ispace-us.com/)
