# **Community Engagement Summary**

## Methodology

The LORS project employs a qualitative research methodology grounded in customer development principles to identify genuine friction points in lunar rover design. Between December 2025 and January 2026, we conducted deep-dive interviews with stakeholders across the commercial, educational, and systems architecture sectors. Our approach focuses on extracting concrete technical challenges from past projects rather than hypothetical opinions, ensuring the standard addresses verified industry needs. The full question set used for this research is available in the [LORS Interview Questions](https://github.com/Official-MoonDao/LORS/blob/main/LORS_Interview%20questions.md).

## Anonymized Stakeholder Findings

### **CEO of Lunar Rover Startup**

* **Power-to-System Mismatch**: A key friction point identified was the discrepancy between initial motor selection (NEMA 17) and final vehicle mass, necessitating impromptu power system upgrades. This highlights the need for standardized **power budgeting frameworks** akin to CubeSat power models.
* **Environmental Uncertainty**: The lack of accessible standards for **dust mitigation** and thermal management in "cold but not polar" environments creates over-engineering risks. Small teams struggle to define adequate testing protocols without clear, tiered standards.
* **Navigation Architecture**: In GPS-denied environments, the choice between autonomous planning and high-latency telemetry is often made ad-hoc. Reference architectures for **sensor fusion** and navigation stacks would significantly lower development barriers.

### Systems Architect & University Rover Challenge Veteran

* **The "Full Deck" Standard**: Proposed a "Turing-complete" standard of approximately 50 modular components. This level of complexity is sufficient to enable infinite design variations ("a Cambrian explosion") while remaining low enough for rapid workforce training—similar to the 50 distinct commands in early microcomputer manuals.
* **Modular Hot-Swaps**: Emphasized the "pit stop" engineering model used in top-tier competitions, where hardware modules self-identify and configure upon insertion. This **plug-and-play modularity** reduces operational risk and mimics modern IT architectures (e.g., NAS RAID systems) rather than bespoke aerospace harnesses.
* **Tiered Specifications**: Advocated for environmental tiers (e.g., Polar, Equatorial, Lava Tube) rather than a single worst-case standard. This economic approach lowers the "cost of entry" for simpler missions, expanding the total addressable market for component manufacturers.

### Educational Program Director

* **Software First**: Software integration often consumes more resources than hardware assembly but receives less standardization focus. **Simulation environments** and standard C2 (Command & Control) protocols are critical for enabling multi-vendor interoperability.
* **Interoperability Incentives**: Individual companies lack natural incentives to create interoperable interfaces; this is the unique value proposition of an open standard. A shared standard enables passive collaboration—such as ad-hoc mesh networking between rovers—that proprietary designs preclude.

## Synthesized Requirements Analysis

The following table summarizes the high-priority "friction points" validated by multiple stakeholders:

| Domain                | Primary Pain Point                       | Proposed Standard Solution                                     |
| :-------------------- | :--------------------------------------- | :------------------------------------------------------------- |
| **Power**       | Custom voltage/connector mismatches      | Standard voltage bus (28V/12V) & connector catalog             |
| **Software**    | High integration overhead for sensors    | "Plug-and-play" driver standards & simulation tools            |
| **Environment** | Over-specifying for worst-case scenarios | **Tiered Certification** (Polar / Equatorial / Day-Only) |
| **Mechanical**  | Bespoke chassis & mounting design        | Modular mounting grids & hot-swap interface specs              |

## Discussion: Standards Economics & Systems Theory

### Network Effects and Market Aggregation

A primary economic barrier in the current lunar ecosystem is market fragmentation. Component suppliers cannot justify mass-producing lunar-grade motors or batteries for single-mission orders. LORS aims to create **market aggregation** similar to the CubeSat standard (P-POD), which unified demand across thousands of university and commercial projects. By defining a common interface, we aim to transform bespoke "craft" manufacturing into scalable industrial production, driving down costs via positive network effects (David & Greenstein, 1990).

### The Economics of Tiered Standards

Traditional aerospace standards often impose high "barriers to entry" by assuming worst-case environmental conditions for every component. This stifles innovation by excluding lower-cost, higher-risk missions that could provide valuable data (Blind, 2004). A **tiered standard approach**—classifying requirements by mission profile (e.g., Short Duration/Equatorial vs. Long Duration/Shadowed)—aligns engineering rigor with actual mission risk. This economic efficiency is crucial for democratizing access to the lunar surface.

### Software-Defined Interoperability

As robotic systems become increasingly complex, the "integration tax"—the cost of making disparate systems work together—exceeds the cost of the components themselves (Boehm, 2001). Transitioning from hardware-defined standards to **software-defined interoperability** (standard APIs, discovery protocols, and shared simulation contexts) is essential. This mirrors the evolution of terrestrial robotics (ROS) and is a prerequisite for future multi-agent lunar operations, such as swarms or cooperative infrastructure construction.

## Call to Participate

We are actively expanding this dataset to ensure LORS represents the needs of the entire lunar community.

* **For Developers**: If you have built or are building a rover, we want to hear your "horror stories" of integration. Your pain points will directly shape the standard.
* **For Contributors**: We invite engineers to help draft the specific technical tiers for Power, Data, and Mechanical interfaces.

**[Contact the LORS Project Team to schedule an interview or contribute via GitHub]**
