# Lunar Missions Manifest

This document tracks active and upcoming lunar missions, providing timeline context for LORS standardization efforts.

## Mission Timeline (2025-2028)

### 2025 missions
| Mission | Lander | Payloads | Status | Details |
| :--- | :--- | :--- | :--- | :--- |
| **IM-2 (Athena)** | [Nova-C](./LUNAR_LANDERS.MD#nova-c) | [MAPP](./LUNAR_ROVERS.MD#mapp), [Yaoki](./LUNAR_ROVERS.MD#yaoki) | Landed (Mar 2025) | First commercial rover at south pole. |
| **HAKUTO-R M2** | [HAKUTO-R](./LUNAR_LANDERS.MD#hakuto-r) | [TENACIOUS](./LUNAR_ROVERS.MD#tenacious) | Landed/Deployed (Jan 2025) | Micro-rover regolith extraction demo. |

```yaml
mission_id: im-2-athena
lander_id: nova-c
payload_ids: [mapp, yaoki]
launch_date: 2025-03
status: Success
target_site: South Pole
```

```yaml
mission_id: hakuto-r-m2
lander_id: hakuto-r
payload_ids: [tenacious]
launch_date: 2025-01
status: Success
target_site: Mare Frigoris
```

### 2026 Missions
| Mission | Lander | Payloads | Status | Details |
| :--- | :--- | :--- | :--- | :--- |
| **IM-3 (Nova-C)** | [Nova-C](./LUNAR_LANDERS.MD#nova-c) | [CADRE](./LUNAR_ROVERS.MD#cadre), [Lunar Vertex](./LUNAR_ROVERS.MD#lunar-vertex) | Planned | Distributed autonomy/swarm coordination. |
| **Griffin M1** | [Griffin](./LUNAR_LANDERS.MD#griffin) | [CubeRover](./LUNAR_ROVERS.MD#cuberover), [FLIP](./LUNAR_ROVERS.MD#flip) | Planned (Jul 2026) | Medium-class lander delivering modular cargo. |
| **Chang'e 7** | [Chang'e 7](./LUNAR_LANDERS.MD#change-7) | Chang'e 7 Rover | Planned | South pole survey, water ice detection. |
| **Blue Ghost 2** | [Blue Ghost](./LUNAR_LANDERS.MD#blue-ghost) | [Rashid 2](./LUNAR_ROVERS.MD#rashid-2) | Planned | Far side mission. |

```yaml
mission_id: im-3-nova-c
lander_id: nova-c
payload_ids: [cadre, lunar-vertex]
launch_date: 2026
status: Planned
target_site: Reiner Gamma
```

```yaml
mission_id: griffin-m1
lander_id: griffin
payload_ids: [cuberover, flip]
launch_date: 2026-07
status: Planned
target_site: Nobile Crater
```

```yaml
mission_id: change-7-mission
lander_id: change-7
payload_ids: [change-7-rover]
launch_date: 2026
status: Planned
target_site: South Pole
```

```yaml
mission_id: blue-ghost-2-mission
lander_id: blue-ghost
payload_ids: [rashid-2]
launch_date: 2026
status: Planned
target_site: Far Side
```

### 2027 Missions
| Mission | Lander | Payloads | Status | Details |
| :--- | :--- | :--- | :--- | :--- |
| **Blue Moon MK1** | [Blue Moon MK1](./LUNAR_LANDERS.MD#blue-moon-mk1) | [VIPER](./LUNAR_ROVERS.MD#viper) | Planned (Late 2027) | Major volatiles prospecting mission. |
| **APEX 1.0 (ispace M3)** | [APEX 1.0](./LUNAR_LANDERS.MD#apex-1-0) | TBD | Planned | Commercial far-side operations. |

### 2028 Missions
| Mission | Lander | Payloads | Status | Details |
| :--- | :--- | :--- | :--- | :--- |
| **Artemis IV** | Starship (HLS) | [LTV](./LUNAR_ROVERS.MD#ltv) | Planned (Late 2028) | Astronaut transport (Lunar Terrain Vehicle). |
| **Chang'e 8** | [Chang'e 8](./LUNAR_LANDERS.MD#change-8) | Chang'e 8 Rover | Planned | ILRS Testbed. |

```yaml
mission_id: blue-moon-mk1-m1
lander_id: blue-moon-mk1
payload_ids: [viper]
launch_date: 2027
status: Planned
target_site: South Pole
```


```yaml
mission_id: artemis-iv
lander_id: starship-hls
payload_ids: [ltv-eagle, ltv-flex, ltv-moonracer]
launch_date: 2028
status: Planned
target_site: South Pole
```

```yaml
mission_id: change-8-mission
lander_id: change-8
payload_ids: [change-8-rover]
launch_date: 2028
status: Planned
target_site: South Pole
```

---

## Detailed Manifest Table

| Rover | Developer | Mission / Launch | Status | Significance for LORS |
| :--- | :--- | :--- | :--- | :--- |
| **[MAPP](https://www.lunaroutpost.com/mapp)** | Lunar Outpost | IM-2 (Athena) | Landed (Mar 2025) | Demonstrates commercial 4G/LTE. |
| **[TENACIOUS](https://ispace-inc.com/wp-content/uploads/2024/07/EN_20240725_Rover-Completion.pdf)** | ispace-EUROPE | HAKUTO-R M2 | Landed (Jan 2025) | Micro-rover reference design. |
| **[Yaoki](https://dymon.co.jp/en/)** | Dymon | IM-2 (Athena) | Landed (Mar 2025) | Extreme miniaturization. |
| **[CADRE](https://d2pn8kiwq2w21t.cloudfront.net/documents/CADRE-Fact-Sheet.pdf)** | JPL | IM-3 (Nova-C) | Planned (2026) | Distributed Autonomy standards. |
| **[Lunar Vertex](https://www.jhuapl.edu/destinations/missions/lunar-vertex)** | JHU APL / IM | IM-3 (Nova-C) | Planned (2026) | Science-focused integration. |
| **CubeRover** | Astrobotic | Griffin M1 | Planned (Jul 2026) | CubeSat-style modular design. |
| **FLIP** | Astrolab | Griffin M1 | Planned (Jul 2026) | Modular cargo interface. |
| **Chang'e 7 Rover** | CNSA | Chang'e 7 | Planned (2026) | Multi-modal locomotion. |
| **Rashid 2** | MBRSC | Blue Ghost 2 | Planned (2026) | International collaboration model. |
| **VIPER** | NASA | Blue Moon MK1 | Planned (Late 2027) | Thermal/drill subsystem reference. |
| **LUPEX Rover** | JAXA / ISRO | H3 Launch | Planned (2027) | Drilling/sample handling standards. |
| **LTV** | Multiple | Artemis IV | Planned (2028) | Human-machine interface reference. |


