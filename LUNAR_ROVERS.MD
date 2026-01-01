# Lunar Rovers Registry

Lunar rovers are robotic vehicles designed for exploration and surface operations on the Moon. This registry categorizes them by size, capability, and development stage to support LORS standardization efforts.

## Utility & Multi-Purpose Rovers

### Astrolab FLEX Rover
- **Developer:** Venturi Astrolab
- **Description:** Versatile rover for crewed and robotic mobility, LTV competitor. Planned for mid-2026 via Starship.
- **Key Features:** 1,600 kg cargo capacity. Modular payload interface.

```yaml
id: astrolab-flex
developer: Venturi Astrolab
type: Utility
mass_kg: 1600
power_w: null
locomotion: 4-wheel
comms: null
```

### GITAI R1
- **Developer:** GITAI
- **Description:** Developed for mining, inspection, and infrastructure tasks (e.g., solar panel assembly).

```yaml
id: gitai-r1
developer: GITAI
type: Utility
mass_kg: null
power_w: null
locomotion: 4-wheel
comms: null
```

### VIPER
- **Developer:** NASA
- **Description:** **Volatiles Investigating Polar Exploration Rover**. Major reference mission for polar resource prospecting; thermal and drill subsystem standards.
- **Key Features:** South Pole ice prospecting. Drill capability to 1m depth.

```yaml
id: viper
developer: NASA
type: Utility
mass_kg: 450
power_w: null
locomotion: 4-wheel
comms: S-band
```

### LUPEX Rover
- **Developer:** JAXA / ISRO
- **Description:** Joint Japan-India mission. Water ice investigation with drilling system.

```yaml
id: lupex-rover
developer: JAXA / ISRO
type: Utility
mass_kg: 350
power_w: null
locomotion: 4-wheel
comms: null
```

---

## Micro & Small Rovers

### MAPP
- **Developer:** [Lunar Outpost](https://www.lunaroutpost.com/mapp)
- **Description:** **Mobile Autonomous Prospecting Platform**. First commercial rover at south pole. First **LTE-enabled** lunar rover.

```yaml
id: mapp
developer: Lunar Outpost
type: Micro
mass_kg: 10
power_w: null
locomotion: 4-wheel
comms: LTE
```

### TENACIOUS
- **Developer:** [ispace-EUROPE](https://ispace-inc.com/wp-content/uploads/2024/07/EN_20240725_Rover-Completion.pdf)
- **Description:** Micro-rover (26x31.5x54 cm). CFRP frame. Regolith extraction demo for NASA.

```yaml
id: tenacious
developer: ispace-EUROPE
type: Micro
mass_kg: 5
power_w: null
locomotion: 4-wheel
comms: null
```

### Yaoki
- **Developer:** [Dymon](https://dymon.co.jp/en/)
- **Description:** Ultra-compact rover. 200G shock resistance. Demonstrates extreme miniaturization.

```yaml
id: yaoki
developer: Dymon
type: Micro
mass_kg: 0.498
power_w: null
locomotion: 2-wheel
comms: null
```

### EagleCam
- **Developer:** Embry-Riddle Aeronautical University
- **Description:** CubeSat-sized payload launched on IM-1. Designed to capture third-person landing images and test electrostatic dust removal.

```yaml
id: eaglecam
developer: ERAU
type: Micro
mass_kg: 1.5
power_w: null
locomotion: null
comms: Wi-Fi (to lander)
```

### CADRE
- **Developer:** JPL
- **Description:** **Distributed Autonomy**. Trio of shoebox-sized rovers with mesh networking. Key reference for autonomous swarm coordination.

```yaml
id: cadre
developer: JPL
type: Micro
mass_kg: 10
power_w: null
locomotion: 4-wheel
comms: Mesh
```

### CubeRover
- **Developer:** Astrobotic
- **Description:** CubeSat-style modular rover. carbon fiber chassis.

```yaml
id: cuberover
developer: Astrobotic
type: Micro
mass_kg: 2
power_w: null
locomotion: 4-wheel
comms: null
```

### Iris
- **Developer:** Carnegie Mellon University
- **Description:** CubeSat-style rover. Carbon fiber chassis. Launched 2024.

```yaml
id: iris
developer: CMU
type: Micro
mass_kg: 2
power_w: null
locomotion: 4-wheel
comms: null
```

---

## Crewed Lunar Terrain Vehicles (LTV)

### LTV Eagle (Lunar Dawn Team)
- **Developer:** Lunar Outpost
- **Partners:** Lockheed Martin, MDA Space, GM, Goodyear

```yaml
id: ltv-eagle
developer: Lunar Outpost
type: Crewed
mass_kg: 2000
power_w: null
locomotion: 4-wheel
comms: LTE
```

### LTV FLEX
- **Developer:** Venturi Astrolab
- **Partners:** Axiom Space, Odyssey Space Research

```yaml
id: ltv-flex
developer: Venturi Astrolab
type: Crewed
mass_kg: 2000
power_w: null
locomotion: 4-wheel
comms: null
```

### LTV Moon RACER
- **Developer:** Intuitive Machines
- **Partners:** AVL, Boeing, Michelin, Northrop Grumman

```yaml
id: ltv-moonracer
developer: Intuitive Machines
type: Crewed
mass_kg: 2000
power_w: null
locomotion: 4-wheel
comms: null
```

---

## Research & Special Locomotion Rovers

### Lunar Zebro
- **Developer:** TU Delft
- **Description:** **Walking Rover**. 6 C-shaped legs for difficult terrain. A4 sheet size.

```yaml
id: lunar-zebro
developer: TU Delft
type: Micro
mass_kg: 2.5
power_w: null
locomotion: Legged
comms: null
```

### Sora-Q (LEV-2)
- **Developer:** JAXA / Tomy
- **Description:** **Transformable**. Sphere to rover. Successfully operated on Moon Jan 2024.

```yaml
id: sora-q
developer: JAXA
type: Micro
mass_kg: 0.25
power_w: null
locomotion: 2-wheel
comms: null
```

### Asagumo
- **Developer:** Spacebit (UK)
- **Description:** **Walking Rover**. Spider-like 4-legged. LiDAR/HD camera.

```yaml
id: asagumo
developer: Spacebit
type: Micro
mass_kg: 1.3
power_w: null
locomotion: Legged
comms: null
```

### Colmena
- **Developer:** UNAM (Mexico)
- **Description:** **Micro-swarm**. 5 tiny robots (<60g each) for swarm testing and regolith study.

```yaml
id: colmena
developer: UNAM
type: Micro
mass_kg: 0.3
power_w: null
locomotion: null
comms: Mesh
```

---

## Educational & Open Source Platforms

| Rover | Developer | Description | Link |
| :--- | :--- | :--- | :--- |
| **JPL Open Source Rover** | JPL | Scaled-down Curiosity. 6-wheel Rocker-Bogie. | [GitHub](https://github.com/nasa-jpl/open-source-rover) |
| **ExoMy** | ESA | Fully 3D-printable, triple-bogie, RPi based. | [GitHub](https://github.com/esa-prl/ExoMy) |
| **Sawppy Rover** | Roger Cheng | Low-cost OSR alternative. | [GitHub](https://github.com/Roger-random/Sawppy_Rover) |
| **SGVHAK Rover** | SGVHAK | Based on JPL OSR for makers. | [GitHub](https://github.com/sgvhak/SGVHAK_Rover) |
| **Leo Rover** | Fictionlab | Commercial rugged 4x4, IP66, ROS-ready. | [Website](https://www.leorover.tech/) |

---

## Entities & Development Notes

### Space Tech Expo Bremen (2025) Participants:
- **The Roo-ver:** Australian Space / Lunar Outpost. First Australian lunar rover using 4G/LTE.
- **ispace Japan:** Developing lunar exploration technologies.
- **Neuospace GmbH:** Specialized in lunar exploration.
- **Space Applications Services nv/sa:** European space products provider.
- **DFKI Robotics Innovation Center:** German research focused on AI/robotics.
- **Berlin Experimental Astronautics Research Team (TU Berlin):** Student-led astronautics.

### Software & Autonomy Focus:
- **Mission Control Space Services:** Autonomy software for lunar rovers. Canadian lunar utility rover program.

### Concept & Prototype Projects:
- **Simplified Designs:** Ali (robotsailor), Purdue alum.
- **Exo Stellar Pulse Fusion:** S. Nagarshi. Helium-3 extraction concept.
