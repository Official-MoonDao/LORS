---
id: yaoki
name: Yaoki
developer: Dymon
type: Nano
class: Commercial / Nano
status: Flight-Ready
physical:
  mass_kg: 0.498
  mobility:
    type: "2-wheel independent"
    shock_resistance_g: 200
    speed_cm_s: 5
comms:
  wireless:
    type: "Lander Relay (Wi-Fi)"
    frequency: "2.4 GHz"
---

# Yaoki

## Overview
Yaoki is an ultra-compact "nano-rover" developed by Dymon (Japan). It is designed to be extremely lightweight and durable.

## Communication Systems
*   **Wi-Fi Relay:** YAOKI utilizes a **2.4 GHz Wi-Fi** link to communicate with the **Nova-C** lander.
*   **Telemetry:** Designed for low-latency transmission of drive commands and camera metadata.

## Mobility & Deployment
*   **Drop-Off Egress:** Due to its 200G shock resistance, YAOKI does not require a complex ramp. It is deployed via a simple "drop-off" mechanism from the lander's payload deck.
*   **Tumble Locomotion:** The 2-wheel design allows the rover to operate effectively even if it flips or tumbles during movement.
*   **Scale:** At less than 0.5 kg, it is one of the smallest commercial rovers ever launched, optimized for scouts and swarms.

## Resources
*   [Dymon Yaoki Website](https://dymon.co.jp/en/)
