# Lunar Landers and Payload Specifications

This document catalogs upcoming lunar landers from commercial providers (CLPS) and international space agencies, focusing on their payload capacities and interface specifications.

## Summary Table

| Lander | Provider | Launch / Status | Payload Capacity | Power (Surface) | Key Features |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **Blue Ghost** | Firefly Aerospace | 2025 (Mission 1) | ~150 kg | ~300 W | 2m height x 3.5m width. 14-day survival. |
| **Nova-C** | Intuitive Machines | Active (IM-1) | 100 - 130 kg | Provided | 14-day surface life. |
| **Griffin** | Astrobotic | 2025 (Mission 1) | ~625 kg | 150 W | Medium-class lander. Designed for rovers. |
| **Blue Moon MK1** | Blue Origin | ~2025 | ~3,000 kg | High | Cargo variant. New Glenn 7m fairing. |
| **APEX 1.0** | ispace US / Draper | 2026 (Series-2) | 300 - 500 kg | TBD | Far side mission (Schrödinger Basin). |
| **Argonaut** | ESA | ~2030 | ~1,500 kg | TBD | European logistics lander. |
| **LUPEX** | ISRO / JAXA | ~2025/26 | ~350 kg | TBD | Polar exploration focus. |

---

## Commercial Lunar Payload Services (CLPS) & US Commercial

### Blue Ghost
- **Provider:** Firefly Aerospace
- **Key Features:** 2m height x 3.5m width. 14 Earth day survival (Mission 1). Mission 2 targets Far Side (LuSEE-Night).
- **Source:** [Blue Ghost Page](https://fireflyspace.com/blue-ghost/)

```yaml
id: blue-ghost
provider: Firefly Aerospace
payload_capacity_kg: 150
power_surface_w: 300
data_rate: "> 10 Mbps"
status: 2025 (Mission 1) / 2026 (Mission 2)
```

### Nova-C
- **Provider:** Intuitive Machines
- **Key Features:** 14-day surface life. IM-3 targets Reiner Gamma.
- **Source:** [Lunar Access Services](https://www.intuitivemachines.com/)

```yaml
id: nova-c
provider: Intuitive Machines
payload_capacity_kg: 130
power_surface_w: null
data_rate: "Varying"
status: Active (IM-1 Success), IM-2/IM-3 (2025-26)
```

### Griffin
- **Provider:** Astrobotic
- **Key Features:** Medium-class lander. Designed for rovers (originally VIPER). High-precision landing (100m).
- **Source:** [Griffin Page](https://www.astrobotic.com/griffin/)

```yaml
id: griffin
provider: Astrobotic
payload_capacity_kg: 625
power_surface_w: 150
data_rate: "200 kbps"
status: 2025 (Mission 1)
```

### Peregrine
- **Provider:** Astrobotic
- **Key Features:** First mission suffered anomaly. Architecture informs Griffin.
- **Source:** [Peregrine PUG](https://www.astrobotic.com/wp-content/uploads/2021/01/Peregrine-Payload-Users-Guide.pdf)

```yaml
id: peregrine
provider: Astrobotic
payload_capacity_kg: 100
power_surface_w: null
data_rate: null
status: Flown (2024 - Loss)
```

### Blue Moon MK1
- **Provider:** Blue Origin
- **Key Features:** Cargo variant. Uses New Glenn 7m fairing. Precision landing.
- **Source:** [Payload Page](https://www.blueorigin.com/blue-moon)

```yaml
id: blue-moon-mk1
provider: Blue Origin
payload_capacity_kg: 3000
power_surface_w: null
data_rate: "Direct-to-Earth"
status: "~2025 (Pathfinder)"
```

### APEX 1.0
- **Provider:** ispace US / Draper
- **Key Features:** 3.1m tall. Far side mission (Schrödinger Basin). Relay satellite support.
- **Source:** [APEX Page](https://ispace-us.com/apex/)

```yaml
id: apex-1-0
provider: ispace US / Draper
payload_capacity_kg: 300
power_surface_w: null
data_rate: "TBD"
status: "2026 (Series-2)"
```

---

## International Commercial

### HAKUTO-R
- **Provider:** ispace (Japan)
- **Key Features:** Series 1 lander. Mission 2 ("Resilience") includes micro-rover. Mission 3 (2026).

```yaml
id: hakuto-r
provider: ispace
payload_capacity_kg: 30
power_surface_w: null
data_rate: null
status: "Mission 2 (2025) / Mission 3 (2026)"
```

### Beresheet 2
- **Provider:** SpaceIL (Israel)
- **Key Features:** Dual lander configuration + Orbiter.

```yaml
id: beresheet-2
provider: SpaceIL
payload_capacity_kg: null
power_surface_w: null
data_rate: null
status: "~2025"
```

---

## Agency / Institutional Landers

### Argonaut (EL3)
- **Agency:** ESA
- **Key Features:** Logistics lander. Uses **Cargo Platform Element (CPE)** and MANUS robotic arm for deployment.

```yaml
id: argonaut
provider: ESA
payload_capacity_kg: 2100
power_surface_w: null
data_rate: null
status: "~2030"
```

### LUPEX Lander
- **Agency:** ISRO (with JAXA)
- **Key Features:** **Polar Exploration.** Carries JAXA/ISRO rover (~350kg). Investigating water ice.

```yaml
id: lupex-lander
provider: ISRO
payload_capacity_kg: 350
power_surface_w: null
data_rate: null
status: "~2025/26"
```

### Chang'e 7
- **Agency:** CNSA
- **Key Features:** **South Pole Survey.** Orbiter, Lander, Rover, Hopper. International payloads (≤10kg lander, ≤15kg orbiter).

```yaml
id: change-7
provider: CNSA
payload_capacity_kg: 10
power_surface_w: null
data_rate: null
status: "~2026"
```

### Chang'e 8
- **Agency:** CNSA
- **Key Features:** **ILRS Testbed.** In-situ resource utilization. International payload modules up to 100kg/50W.

```yaml
id: change-8
provider: CNSA
payload_capacity_kg: 200
power_surface_w: 50
data_rate: null
status: "~2028"
```
