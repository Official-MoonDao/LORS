---
id: nova-c
name: Nova-C
provider: Intuitive Machines
class: Light Logistic
status: Active
physical:
  payload_capacity_kg: 130
  height_m: 4.0
  width_m: 1.57
  wet_mass_kg: 1908
power:
  surface_power_w: "200 W (Guaranteed) / up to 788 W (Max generation)"
  source: Solar
  battery: "25 Amp-hour Li-Ion"
  bus_voltage: "28 VDC (Unregulated)"
comms:
  earth_to_moon:
    band: "S-Band (2.0-2.3 GHz)"
    data_rate: "250 kbps - 6 Mbps"
    encryption: "AES-256 (NIST 800-53)"
    protocols: ["CCSDS AOS", "COTP"]
  wired:
    interfaces: ["Ethernet", "Serial"]
  wireless:
    standard: "802.11ac Wi-Fi"
    frequency: "5.5 - 5.85 GHz"
    relay_capability: "4G/LTE (Nokia demo on IM-2)"
---

# Nova-C

## Communication Systems
Nova-C provides a high-availability data infrastructure for payloads:

### 1. Earth-to-Moon (Lander-to-Ground)
*   **Frequency:** S-Band (Uplink: 2025-2110 MHz | Downlink: 2200-2290 MHz).
*   **Performance:** Bandwidth ranges from **250 kbps to 6 Mbps**.
*   **Security:** All payload data is encrypted on-board using **AES-256** protocol. Customers receive unique decryption keys.
*   **Availability:** Designed for **24/7 continuous data coverage** via the Intuitive Machines Lunar Data Network (LDN).

### 2. Wired Connection (Lander-to-Payload)
*   **Interface:** Ethernet and Serial protocols over an unregulated **28 VDC** power/data bus.
*   **Reliability:** CCSDS protocols ensure error-free telemetry and command handling.

### 3. Wireless Connection (Lander-to-Surface Assets)
*   **Standard:** **802.11ac Wi-Fi** (5.5 - 5.85 GHz) for commercial payload communication.
*   **Advanced Networking:** Demonstrated **4G/LTE connectivity** (in collaboration with Nokia) for surface deployment and hopper-to-lander relay.

## Mission Phases & Timeline
The Nova-C mission profile is optimized for direct, fast-transit trajectories:

| Phase | Duration | Details |
| :--- | :--- | :--- |
| **Cruise / Transfer** | ~7 Days | Direct trajectory (e.g., IM-1 transit was ~7.7 days). |
| **Lunar Orbit** | ~24 Hours | Circularization and checkout before descent. |
| **Surface Ops** | ~7 - 14 Days | Primarily powered by solar; typically operates until local sunset. |

## Service Modes by Phase
*   **Cruise:** Payloads can remain active for health checks; direct S-Band link to Earth.
*   **Landing:** High-speed autonomous navigation (NDL) data takes priority.
*   **Surface:** Guaranteed **200W** power allocation for payloads. Data rates scale up to **6 Mbps** depending on ground station visibility.

## Key Features
*   **Propulsion:** VR900 main engine running on **Methalox** (Liquid Methane/LOX), enabling potential future in-situ resource utilization.
*   **Landing Tech:** Uses Autonomous Hazard Detection & Avoidance (part of NASA's CLPS program).
*   **Precision:** Targeted landing accuracy improved via Navigation Doppler Lidar (NDL).

## Missions
*   **IM-1 (Odysseus):** Successfully landed in Feb 2024 (Malapert A). Task Order 2-IM.
*   **IM-2 (Athena):** Landed Mar 2025 at the lunar South Pole. Task Order PRIME-1.
*   **IM-3:** Targeted for Reiner Gamma in 2026. Task Order CP-11.
*   **IM-4:** Targeted for Mons Mouton in 2027. Task Order CP-22.

## Resources
*   [Intuitive Machines Nova-C Product Page](https://www.intuitivemachines.com/lightcargo)
*   [Lunar Access Services (IM)](https://www.intuitivemachines.com/lunaraccess)
*   [IM-1 Mission Dashboard](https://www.intuitivemachines.com/im-1)
