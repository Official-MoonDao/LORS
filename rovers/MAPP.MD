---
id: mapp
name: MAPP (Mobile Autonomous Prospecting Platform)
developer: Lunar Outpost
type: Micro
class: Commercial / Prospecting
status: Flight-Ready
physical:
  mass_kg: 10
  payload_capacity_kg: 2
  speed_cm_s: 10
  dimensions:
    length_mm: 300
    width_mm: 300
    height_mm: 200
power:
  source: Solar
  battery: "Survives short shadows"
comms:
  wireless:
    primary: "4G/LTE (Nokia Network)"
    backup: "Wi-Fi (802.11ac)"
    frequency: ["2100 MHz (LTE)", "5.5-5.85 GHz (Wi-Fi)"]
mobility:
  speed_cm_s: 10
  clearance_mm: 50
  egress: "MAPP Egress System (Ramp-based on Nova-C)"
---

# MAPP

## Overview
The Mobile Autonomous Prospecting Platform (MAPP) is a commercial micro-rover developed by Lunar Outpost. It effectively created the commercial standard for "CubeSat-class" rovers.

## Communication Systems
MAPP represents a major shift toward high-bandwidth commercial standards on the lunar surface:
*   **4G/LTE Relay:** First rover to utilize cellular technology (Nokia Bell Labs) for high-speed connectivity to the **Nova-C** lander.
*   **Wi-Fi Backup:** Supports **802.11ac** (5 GHz band) for direct communication with lander payloads.
*   **Encrypted Uplink:** Commands from the Lunar Outpost Mission Control are routed through the Intuitive Machines encryption gateway.

## Mobility & Operations
*   **Mobility:** Robust 4-wheel independent drive system capable of 10 cm/s.
*   **Autonomy:** Designed for both waypoint navigation and semi-autonomous hazard avoidance.
*   **Integration:** Features a standardized payload deck for LORS-compatible customer experiments.

## LORS Relevance
*   **Standard interface:** The payload deck is a prime candidate for the LORS "Micro-Payload" standard.
*   **Data:** Its usage of LTE vs legacy space radio is a key architectural shift LORS must address.

## Resources
*   [MAPP Product Page](https://www.lunaroutpost.com/mapp)
*   [Lunar Outpost Website](https://www.lunaroutpost.com/)
