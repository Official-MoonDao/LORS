---
id: peregine
name: Peregrine
provider: Astrobotic
class: Light Logistic
status: Flown (Lost)
physical:
  payload_capacity_kg: 90
  height_m: 1.9
  width_m: 2.5
power:
  surface_power_w: "1.0 W/kg (Nominal), 2.5 W/kg (Peak)"
comms:
  earth_to_moon:
    band: "X-Band"
    latency_s: 4.0
    availability: "8-hour cycles (nominal)"
  wired:
    interfaces: ["RS-422", "SpaceWire"]
    protocols: ["SLIP", "UDP"]
  wireless:
    standard: "802.11n WLAN"
    frequency: "2.4 GHz"
---

# Peregrine

## Overview
Peregrine is part of Astrobotic’s common spacecraft bus family, designed for reliable delivery of small to medium payloads to lunar orbit and the lunar surface. It features a modular design that can be adapted for mid-latitude or polar missions.

## Configuration Types
*   **Mid-Latitude:** Features top-mounted solar panels and side radiators for optimal thermal control at lower latitudes.
*   **Polar:** Utilizes side-mounted solar panels to capture low-angle sun at the lunar poles.

## Communication Systems
Peregrine provides three distinct data layers for payload operations:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** X-Band (uplink/downlink).
*   **Latency:** Nominal one-way latency of **4 seconds**.
*   **Duty Cycle:** Typically operates on an 8-hour cycle (alternating between Ground Station contact and LOS).
*   **Reliability:** Telemetry and telecommands are transmitted transparently (VPN tunnel) without modification.

### 2. Wired Connection (Lander-to-Payload)
*   **Physical:** Standard Electrical Connector (SEC) - MIL-DTL-38999 Series III.
*   **Interfaces:**
    *   **Serial RS-422:** Standard service for telemetry/commanding.
    *   **SpaceWire:** Available for high-speed data needs (requires Regular SEC).
*   **Synchronization:** "Time at the Tone" service for UTC synchronization.

### 3. Wireless Connection (Lander-to-Deployed Payload)
*   **Standard:** IEEE **802.11n WLAN** (Wi-Fi).
*   **Frequency:** 2.4 GHz.
*   **Usage:** Available to surface-deployable payloads only after separation from the lander.

## Mission Phases & Timeline
Peregrine missions follow a standard profile with approximate durations:

| Phase | Duration | Key Activities |
| :--- | :--- | :--- |
| **Launch** | 1 - 3 Hours | Earth lift-off to highly elliptical orbit / TLI. |
| **Cruise** | 3 - 33 Days | Transit to Moon, orbit corrections. |
| **Lunar Orbit** | 4 - 25 Days | Injection, orbital payload deployment, descent prep. |
| **Surface Ops** | 192+ Hours | Landing, rover egress, primary science mission. |

## Service Modes by Phase
Power and data services transition through specific modes to prioritize lander survival and payload operations:

| Phase | Power Mode | Data Mode |
| :--- | :--- | :--- |
| **Launch** | OFF | OFF |
| **Cruise** | NOMINAL | HEARTBEAT (10 bps/payload) |
| **Lunar Orbit** | NOMINAL / RELEASE | HEARTBEAT |
| **Surface** | NOMINAL / PEAK | NOMINAL / RELEASE |

*Note: Data services follow an 8-hour cycle (Typically 7 hours Nominal / 1 hour OFF per cycle on surface).*

## Missions
*   **Mission 1 (PM1):** Launched January 8, 2024. Despite the propulsion leak, the lander established stable communications with Earth and successfully served as a data relay for several on-board payloads in cislunar space.

## Resources
*   [Peregrine Payload User's Guide (PUG)](https://www.astrobotic.com/wp-content/uploads/2021/01/Peregrine-Payload-Users-Guide.pdf)
*   [Astrobotic Website](https://www.astrobotic.com/)
