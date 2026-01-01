---
id: argonaut
name: Argonaut (EL3)
provider: ESA
class: Heavy Logistic
status: Planned
physical:
  payload_capacity_kg: "1500 - 2100"
  height_m: 6.0
  diameter_m: 4.5
  launch_mass_kg: 10000
power:
  surface_power_w: "900 (Peak via Solar) / Scalable to >7 kW (ECSM payload)"
  battery: "150 V System"
comms:
  earth_to_moon:
    band: ["X-Band", "S-Band"]
    type: "Telemetry, Tracking, and Command (TT&C)"
    network: "ESA Lunar Link / Moonlight / Gateway"
  wired:
    interfaces: ["Cargo Platform Element (CPE) Standard Interface"]
  wireless:
    type: "Data Relay for Passthrough Payloads"
---

# Argonaut

## Overview
Argonaut (formerly EL3 - European Large Logistics Lander) is ESA's heavy-lift lunar lander.

## Communication Systems
Argonaut serves as a critical communication and logistics node in the ESA/Artemis ecosystem:
*   **Dual-Band Architecture:** Utilizes both **X-Band** and **S-Band** for TT&C, providing high-bandwidth telemetry and real-time video downlink during descent.
*   **Interoperability:** Designed for seamless integration with the **ESA Moonlight** navigation/comms network and the **Lunar Gateway**.
*   **Relay Support:** The Lunar Descent Element (LDE) provides data relay services for hosted and deployed payloads.

## Mission Phases & Timeline
The Argonaut mission architecture is optimized for long-term presence:
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Lunar Transfer** | 1 Week - 1 Month | Flight to lunar orbit and descent preparation. |
| **Passivation** | Post-Landing | Safe rendering of propellant systems as inactive. |
| **Surface Ops** | Up to 5 Years | Passive structural support and power station role for payloads. |

## Service Modes by Phase
*   **Transit:** Active TT&C and payload health monitoring.
*   **Landing:** High-precision autonomous descent (Target: 50-100m).
*   **Surface (Passive):** The LDE supports "Passenger" elements (rovers/base modules) while the CPE manages electrical/data distribution.

## Key Features
*   **Modular Elements:** Consists of the **Lunar Descent Element (LDE)** for flight and the **Cargo Platform Element (CPE)** for payload interfacing.
*   **Propulsion:** Throttlable MMH/MON engines with precision electric pumps.
*   **Scale:** Delivers "infrastructure-class" cargo (food, water, power stations, heavy rovers) to support sustained human presence.
