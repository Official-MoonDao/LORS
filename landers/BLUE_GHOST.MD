---
id: blue_ghost
name: Blue Ghost
provider: Firefly Aerospace
class: Light Logistic
status: Active (Proven)
physical:
  payload_capacity_kg: 150
  height_m: 2.0
  width_m: 3.5
power:
  surface_power_w: "Up to 400 W (Payload allocation)"
  source: "Solar (3 panels: 2 lateral, 1 deck-top)"
  voltage: "28 VDC (Nominal)"
comms:
  earth_to_moon:
    band: ["X-Band (High Bandwidth)", "S-Band (TT&C)"]
    data_rate: "10 Mbps (Surface) / 2-15 kbps (Transit)"
    network: "Swedish Space Corporation (SSC)"
  wired:
    interfaces: ["Standard electrical/data interface"]
  wireless:
    standard: "Wi-Fi (Internal/Payload-to-Lander network)"
    frequency: "2.4 GHz"
---

# Blue Ghost

## Communication Systems
Blue Ghost employs a high-redundancy communication suite designed for deep space reliability:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequencies:** 1x **X-Band** (CCSDS DVB-S2 for high-bandwidth data) and 3x **S-Band** (Telemetry and precision ranging).
*   **Performance:** 
    *   **Surface:** At least **10 Mbps** downlink to the SSC network.
    *   **Transit:** 2 kbps default, burstable to **15 kbps** with High-Gain Antenna.
*   **Operational Volume:** Transmitted over **119 GB** of data during Mission 1.

### 2. Wired Connection (Lander-to-Payload)
*   **Interface:** Supports continuous or duty-cycled power/data services from Earth orbit through landing.

### 3. Wireless Connection (Lander-to-Deployed Assets)
*   **Standard:** **Wi-Fi** (802.11) signal provided specifically for rover-to-lander relay.
*   **Compatibility:** Designed for high-speed data exchange with mobile payloads (Rovers).

## Mission Phases & Timeline
Blue Ghost utilizes a standard ballistic or direct transfer profile:

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~45 Days | Proven transit duration for M1 (Jan 15 - Mar 2). |
| **Lunar Orbit** | ~24-48 Hours | Circularization and autonomous descent preparation. |
| **Surface Ops** | ~14 Days | Full 1-lunar-day support (346 hours of daylight). |

## Service Modes by Phase
*   **Transit:** Focus on "Keep-alive" power and telemetry heartbeat (2 kbps). High-gain bursts allowed daily.
*   **Autonomous Landing:** S-Band telemetry prioritizing navigation Doppler and range data.
*   **Surface:** Primary operation mode; high-bandwidth X-Band downlink for science and imagery.

## Missions
*   **Mission 1 (Blue Ghost 1):** Launched Jan 15, 2025. Successfully landed in Mare Crisium on March 2, 2025. Operated for a full lunar day + 5 hours, achieving the first fully successful, upright commercial soft landing.
*   **Mission 2 (Blue Ghost 2):** Planned for 2026. Will deliver payloads to the lunar **Far Side**, utilizing ESA's Lunar Pathfinder for communication relay.

## Resources
*   [Blue Ghost Page](https://fireflyspace.com/blue-ghost/)
*   [Firefly Aerospace Website](https://fireflyspace.com/)
