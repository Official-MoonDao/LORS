---
id: blue_moon_mk1
name: Blue Moon MK1
provider: Blue Origin
class: Heavy Logistic
status: Planned
physical:
  payload_capacity_kg: 3000
  height_m: 8.05
  diameter_m: 3.08
power:
  surface_power_w: "1 kW - 100 kW (Scalable via Solar/Fuel Cell)"
  source: "LH2/LOX Fuel Cell & Solar Array (>10 kWe)"
comms:
  earth_to_moon:
    band: "X-Band"
    type: "Continuous Downlink"
    network: "Blue Moon Pathfinder"
  wired:
    interfaces: ["Standard High-Speed Data Interfaces"]
  wireless:
    type: "3GPP/LTE Surface Network capable"
    data_rate: "Up to 25 Mbps"
---

# Blue Moon MK1

## Overview
Blue Moon MK1 is the uncrewed cargo variant of Blue Origin's lander architecture. It is designed to fit inside the 7-meter fairing of the New Glenn rocket.

## Communication Systems
Blue Moon MK1 serves as a high-bandwidth node for lunar surface infrastructure:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Infrastructure:** Uses the Blue Moon Pathfinder system for high-availability X-Band downlink.
*   **Capability:** Designed for "continuous downlink" to ensure real-time telemetry from anywhere on the Moon.

### 2. Surface Networking
*   **Protocol:** Supports **3GPP/LTE** standards for surface connectivity.
*   **Performance:** Capable of **25 Mbps** links up to 10 km, with a maximum range extending to 100 km.

## Mission Phases & Timeline
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | TBD | Balistic or direct transit via New Glenn. |
| **Lunar Orbit** | TBD | Descent preparation and payload checkout. |
| **Surface Ops** | Indefinite | Designed for long-duration stays via cryogenic storage and fuel cell power. |

## Service Modes by Phase
*   **Transit:** Low-power keep-alive modes for massive cargo.
*   **Descent:** Precision landing utilizing the BE-7 engine's deep throttling capability.
*   **Surface:** High-power mode supporting ISRU (In-Situ Resource Utilization) and heavy rover infrastructure.

## Key Features
*   **Capacity:** Can land massive payloads (3 Metric Tons) at any latitude.
*   **Propulsion:** BE-7 engines (LOX/Hydrogen), providing high specific impulse and deep throttling for precision landing.
*   **Role:** Heavy logistics for the Artemis program, pre-positioning infrastructure for crewed Mark 2 (HLS) missions.

## Resources
*   [Blue Moon Payload Page](https://www.blueorigin.com/blue-moon)
*   [Blue Origin Website](https://www.blueorigin.com/)
