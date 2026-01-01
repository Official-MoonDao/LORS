---
id: change_8
name: Chang'e 8
provider: CNSA
class: Heavy / Construction
status: Planned
physical:
  payload_capacity_kg: 200
  components: [Lander, Rover, Robots]
  launch_year: 2028
power:
  surface_power_w: "Substantial (supporting 3D printing/ISRU tests)"
comms:
  earth_to_moon:
    band: "X-Band"
    network: "Queqiao-2 Relay Satellite"
  wired:
    interfaces: ["CNSA System-level piggyback interfaces"]
  wireless:
    type: "Mesh Network (ILRS Base Model)"
---

# Chang'e 8

## Overview
Chang'e 8 is a mission focused on testing technologies for the International Lunar Research Station (ILRS).

## Communication Systems
Chang'e 8 serves as the infrastructure hub for the prototype **International Lunar Research Station (ILRS)**:
*   **Relay Support:** Connected to Earth via the **Queqiao-2** relay network.
*   **Inter-Vehicle Network:** Establishes a local mesh network to communicate with the Chang'e 7 assets and various specialized robots.

## Mission Phases & Timeline
| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Launch** | ~2028 | Deployment to the Leibniz-β Plateau. |
| **ISRU Demo** | Surface Cycle | Testing the feasibility of 3D-printing structures using lunar soil. |
| **Station Building** | Long-term | Coordinating with Chang'e 7 to establish basic ILRS functionality. |

## Key Features
*   **ISRU Verification:** Primary objective is to verify in-situ resource utilization technologies, including making bricks from regolith.
*   **Collaboration Platform:** Provides **200 kg** of piggyback capacity for international partners (e.g., Pakistan's 30kg rover).
*   **Robotic Ecosystem:** Includes a lander, a rover, and potentially multiple robots (flying detectors or humanoids) to test construction techniques.
