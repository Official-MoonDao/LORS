---
id: hakuto-r
name: HAKUTO-R
provider: ispace
class: Light Logistic
status: Active
physical:
  payload_capacity_kg: 30
  dimensions:
    height_m: 2.3
    width_m: 2.6
  dry_mass_kg: 340
power:
  surface_power_w: "Limited (Standard allocation 900mW per small payload)"
comms:
  earth_to_moon:
    band: "X-Band"
    network: "ESA Estrack (35m antennas)"
    latency_s: "Nominal 4-5s"
  wired:
    interfaces: ["RS-422"]
    physical: "Micro-D Connector"
    bit_rate: "921,600 bps"
  wireless:
    type: "Lander-to-Rover Relay (X-Band)"
    status: "Confirmed for Tenacious deployment"
---

# HAKUTO-R

## Communication Systems
HAKUTO-R (Series 1 & 2) utilizes a relay-centric communication architecture:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** X-Band.
*   **Ground Segment:** Utilizes the **ESA Estrack network** (New Norcia, Cebreros, Malargüe).
*   **Performance:** Demonstrated stable playback and real-time command during Cruise and Orbit phases.

### 2. Wired Connection (Lander-to-Payload)
*   **Interface:** **RS-422** via the lander's **Payload Interface Card (PIF)**.
*   **Physical:** **Micro-D connector** for combined power and data.
*   **Baud Rate:** Up to **921,600 bps** as verified by the DSRP (Deep Space Radiation Probe) payload.
*   **Protocol:** UART-to-RS-422 conversion required at the payload level.

### 3. Wireless Connection (Lander-to-Rover)
*   **Frequency:** X-Band.
*   **Application:** Used as a data relay for **TENACIOUS** and **Sora-Q** rovers.

## Mission Phases & Timeline
The standard profile for a HAKUTO-R "Long Trajectory" mission:

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~135 Days | Low-energy trajectory to minimize propellant usage. |
| **Lunar Orbit** | ~30 Days | Insertion occurs at the end of the long cruise. |
| **Surface Ops** | ~12 Days | Designed for 1 lunar day (sunlight duration). |

## Service Modes by Phase
*   **Cruise:** Stable power/data (Heartbeat). Solar generation performance reported higher than expected in Mission 1.
*   **Descent:** Critical phase where landing anomalies occurred (M1/M2).
*   **Surface:** Nominal power provided via solar arrays only during sunlight. No lunar night survival designed for Series 1.

## LORS Relevance
*   **Micro-Rover Integration:** HAKUTO-R M2 includes a specific deployment bay/garage for the **Tenacious** rover.
*   **Interface Standardization:** The use of Micro-D and RS-422 provides a baseline for lightweight lunar payloads.

## Resources
*   [ispace HAKUTO-R Program](https://ispace-inc.com/hakuto-r/)
*   [ispace Mission 2 'Resilience'](https://ispace-inc.com/m2)
*   [ispace Mission 3 Overview](https://ispace-inc.com/m3)
