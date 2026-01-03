---
mission_id: hakuto-r-m1
name: HAKUTO-R M1
lander_id: hakuto-r
payload_ids:
  - rashid
  - sora-q
  - ngk-battery
  - canadensys-cam
  - mcss-ai
  - ngc-nav
  - music-disc
launch_date: 2022-12
status: Crash
target_site: Atlas Crater
---

# HAKUTO-R M1

## Overview
First commercial lander in lunar orbit. Attempted landing but crashed due to altitude estimation error.

## Details
*   **Lander:** [HAKUTO-R](../landers/HAKUTO_R.MD)
*   **Transfer Trajectory:** Low-energy "Long Trajectory" (~135-day cruise).
*   **Connectivity:** 
    *   **Ground Network:** ESA Estrack (Demonstrated stable high-rate data playback).
    *   **Relay:** Successful communication established with onboard systems and payloads during long-duration flight.
*   **Payloads:**
    *   **Rashid** (Rover) - MBRSC (UAE)
    *   **Sora-Q** (Transformable Robot) - [JAXA/Tomy (Japan)](../rovers/SORA_Q.MD)
    *   **Solid-State Battery** (Tech Demo) - NGK Spark Plug (Functioned nominally in cruise).
    *   **360-degree Imaging System** - Canadensys Aerospace (Canada)
    *   **AI Flight Computer** - Mission Control Space Services (Canada)
    *   **Crater Navigation System** - NGC Aerospace (Canada)
    *   **Music Disc** ("SORATO") - Sakanaction
*   **Status:** **Crashed (Apr 25, 2023)**. During the final approach to Atlas Crater, the lander passed over a crater rim. The sudden terrain drop caused a "cliff" in sensor measurement, which the flight software flagged as anomalous. Following its safety logic, the computer ignored subsequent valid altitude readings, leading the lander to believe it was still at high altitude. It exhausted its propellant while hovering ~5km above the surface and free-fell to the crater floor.

## Resources
*   [ispace HAKUTO-R Program](https://ispace-inc.com/hakuto-r/)
*   [ispace Mission 1 Dashboard](https://ispace-inc.com/m1)
