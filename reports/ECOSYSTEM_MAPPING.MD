# Ecosystem Mapping Report
**Date**: 2026-01-02  
**Status**: Initial Baseline  
**Focus**: Project Profiles & Delivery Provider Assessment

## 1. Executive Summary
This document maps the relationships between lunar rovers, their developers, and the landers that deliver them. The ecosystem is currently dominated by four major commercial clusters and several significant institutional partnerships. The primary trend is a move toward "Micro-Swarms" (nano-rovers) for cost-effective scouting and "Heavy Logistics" for sustained infrastructure.

## 2. Rover Project Profiles
The following 10 projects represent the current state-of-the-art in lunar mobility.

| Project | Developer | Class | Status | Primary Mission |
| :--- | :--- | :--- | :--- | :--- |
| **MAPP** | [Lunar Outpost](../SPACE_ENTITIES.MD#lunar-outpost) | Micro | Flight-Ready | IM-2 Athena |
| **FLEX** | [Venturi Astrolab](../SPACE_ENTITIES.MD#venturi-astrolab) | Heavy | Planned | Griffin M1 / Starship |
| **TENACIOUS** | [ispace-EUROPE](../SPACE_ENTITIES.MD#ispace) | Micro | Flight-Ready | HAKUTO-R M2 |
| **CADRE** | [NASA JPL](../SPACE_ENTITIES.MD#jaxa) (Partner) | Swarm | Planned | IM-3 Nova-C |
| **YAOKI** | [Dymon](../SPACE_ENTITIES.MD) | Nano | Flight-Ready | IM-1 / IM-2 |
| **LUPEX Rover** | [JAXA](../SPACE_ENTITIES.MD#jaxa) | Utility | Planned | LUPEX (ISRO Lander) |
| **Sora-Q** | [JAXA](../SPACE_ENTITIES.MD#jaxa) | Nano | Success | SLIM (2024) |
| **Iris** | [CMU](../SPACE_ENTITIES.MD#cmu) | Nano | Flown (Lost)| Peregrine M1 |
| **Colmena** | [UNAM](../SPACE_ENTITIES.MD) | Swarm | Flown (Lost)| Peregrine M1 |
| **CubeRover** | [Astrobotic](../SPACE_ENTITIES.MD#astrobotic) | Micro | Planned | Griffin M1 |

## 3. Delivery Provider Assessment
A detailed look at the 5 primary "Bus" providers in the commercial lunar landscape.

### **Astrobotic (USA)**
*   **Capacity**: 90kg (Peregrine) to 475kg (Griffin).
*   **Standard**: RS-422 and SpaceWire.
*   **Strategy**: "The Heavy Hauler." Focuses on multi-rover deployments (e.g., Griffin carrying FLEX and CubeRovers).

### **Intuitive Machines (USA)**
*   **Capacity**: 130kg (Nova-C) to 1500kg (Nova-D).
*   **Standard**: **Ethernet and 4G/LTE.**
*   **Strategy**: "The High-Bandwidth Node." Prioritizes commercial standards and encrypted data relay.

### **ispace (Japan / U.S.)**
*   **Capacity**: 30kg (Series 1) to 300kg+ (APEX 1.0).
*   **Standard**: RS-422 (Micro-D).
*   **Strategy**: "The Global Network." Utilizing local subsidiaries (US/Europe) to capture regional CLPS and government contracts.

### **Firefly Aerospace (USA)**
*   **Capacity**: 150kg (Blue Ghost).
*   **Standard**: X-Band/S-Band High Bandwidth.
*   **Strategy**: "The Farside Specialist." Using the Elytra orbital vehicle to enable complex Farside communications.

### **Blue Origin (USA)**
*   **Capacity**: 3,000kg (Blue Moon MK1).
*   **Standard**: LH2/LOX High Power (1kW - 100kW).
*   **Strategy**: "Infrastructure Class." Targeting ISRU and pre-habitation logistics for Artemis.

## 4. Ecosystem Trends
1.  **Nano-Rover Proliferation**: Successful missions by Sora-Q and heartbeats from IRIS/COLMENA prove that $2-k$ class nano-rovers are viable "ride-along" payloads.
2.  **LTE Emergence**: The IM-2/Nokia demo is shifting the ecosystem away from specialized space-radio toward standardized cellular networking.
3.  **Relay Dependence**: Farside missions (Blue Ghost 2, APEX 1.0) are driving the development of dedicated lunar orbital relay constellations (Pathfinder, Alpine/Lupine).

## 5. Conclusion
The ecosystem is currently in a "Standardization War" between legacy aerospace protocols and modern commercial standards. LORS must facilitate the transition by providing bridges between these two worlds.

---
*This report was generated using the `report-ecosystem-mapping` skill, synthesizing data from 31 distinct lunar projects and entities.*
