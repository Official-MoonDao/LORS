---
id: griffin
name: Griffin
provider: Astrobotic
class: Medium Logistic
status: Planned
physical:
  payload_capacity_kg: 625
  width_m: 4.5
  height_m: 2.0
power:
  surface_power_w: "1.0 W/kg (Nominal), 2.5 W/kg (Peak)"
comms:
  earth_to_moon:
    band: "X-Band"
    latency_s: 4.0
    antenna: "Actuated Medium/High Gain (Surface)"
  wired:
    interfaces: ["RS-422", "SpaceWire"]
    protocols: ["SLIP", "UDP"]
  wireless:
    standard: "802.11n WLAN"
    frequency: "2.4 GHz"
---

# Griffin

## Overview
Griffin is a medium-class lunar lander developed by Astrobotic, sharing the same "common bus" architecture as Peregrine but scaled for much larger payloads. It is the largest lunar lander currently offered by a commercial provider in the "Medium Logistic" class.

## Key Features
*   **Precision Landing (OPAL):** Utilizes the **Optical Precision Autonomous Landing (OPAL)** sensor—a camera-based terrain-relative navigation package—to achieve a landing accuracy of **100m x 100m**.
*   **Heavy Egress:** Specifically designed to deploy large rovers (like NASA's VIPER) via dual egress ramps.
*   **Propulsion:** Features five 700 lbf main engines and twelve 25 lbf ACS thrusters using a hypergolic bipropellant system (MON3/M20).
*   **High Data Bandwidth:** Supports SpaceWire for high-speed wired communication and 802.11n WLAN for wireless surface operations.

## Communication Systems
Griffin utilizes an upgraded version of the common spacecraft bus communication suite:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** X-Band.
*   **Antennas:** Multiple Low Gain Antennas (Cruise) + **Actuated Medium/High Gain Antenna** (Surface) for increased bandwidth.
*   **Latency:** Nominal **4 seconds**.
*   **Status:** Supports near real-time relay of payload data.

### 2. Wired Connection (Lander-to-Payload)
*   **Physical:** Standard Electrical Connector (SEC).
*   **Protocols:** Supports Serial RS-422 and **SpaceWire**.
*   **Bandwidth:** Higher allocation than Peregrine due to larger payload class support.

### 3. Wireless Connection (Lander-to-Deployed Payload)
*   **Standard:** IEEE **802.11n WLAN** (Wi-Fi).
*   **Frequency:** 2.4 GHz.
*   **Capability:** Enables high-speed wireless connectivity for large rovers (like FLIP or the originally planned VIPER) while operating autonomously on the surface.

## Mission Phases & Timeline
Griffin shares the common bus mission profile but is optimized for longer surface survivability:

| Phase | Duration | Key Activities |
| :--- | :--- | :--- |
| **Launch** | 1 - 3 Hours | Lift-off (e.g., Falcon Heavy for GM1). |
| **Cruise** | 3 - 33 Days | Transit, TLI, Thermal Roll maneuvers. |
| **Lunar Orbit** | 4 - 25 Days | Lunar insertion, orbital deployments. |
| **Surface Ops** | Up to 14 Days | Southern Pole landing, heavy rover deployment. |

## Service Modes by Phase
| Phase | Power Mode | Data Mode |
| :--- | :--- | :--- |
| **Launch** | OFF | OFF |
| **Cruise** | NOMINAL | HEARTBEAT (10 bps/payload) |
| **Lunar Orbit** | NOMINAL / RELEASE | HEARTBEAT |
| **Surface** | NOMINAL / PEAK | NOMINAL / RELEASE |

*Note: During 'Heartbeat' mode in transit, data is limited to health monitoring. 'Nominal' surface rates are enabled during Ground Station contact windows.*

## Missions
*   **Griffin Mission One (GM1):** Target launch to the Moon's South Pole. The mission will demonstrate high-bandwidth surface relay using the actuated high-gain antenna.

## Resources
*   [Griffin Product Page](https://www.astrobotic.com/griffin/)
*   [Astrobotic Website](https://www.astrobotic.com/)
