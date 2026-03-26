# Lunar Open-source Rover Standard (LORS)

> **🚀 Building a Lunar Rover? Start Here!**
> 
> This repository contains helpful materials for lunar rover builders, researchers, and space enthusiasts.
> 
> **New to the project? Ask your AI assistant:**
> ```
> Explain in ELI5 https://github.com/Official-MoonDao/LORS
> ```

## Table of Contents

**Getting Started:**
- [Getting Involved](#getting-involved) - Ways to contribute
- [Contributing Guide](CONTRIBUTING.MD) - How to join the project (Easy & Pro options)
- [How We Work](AI_WORKFLOW.MD) - Advanced AI workflow guide

**Project Information:**
- [Overview](#overview)
- [Problem](#problem)
- [Benefits](#benefits)

**Documentation:**
- [Standards and Documents](STANDARDS_AND_DOCS.MD)
- [Rover Software Proposal](ROVER_SOFTWARE_PROPOSAL.MD)
- [Rover Commands](ROVER_COMMANDS.MD)
- [Lunar Rovers](LUNAR_ROVERS.MD)
- [Lunar Landers](LUNAR_LANDERS.MD)
- [Lunar Missions](LUNAR_MISSIONS.MD)
- [Space Entities](SPACE_ENTITIES.MD)
- [Analysis State](ANALYSIS_STATE.MD)
- [Skills](skills/) - AI research instructions

**System Model (SysML v2):**
- [Model Overview](model/README.md) - Machine-readable standard definition
- [System Architecture](model/system/lors_system.sysml) - Rover, lander & subsystem definitions
- [Requirements](model/requirements/system_requirements.sysml) - 40 formal requirements with traceability
- [Budget Requirements](model/requirements/budget_requirements.sysml) - Quantitative mass, power, link & thermal constraints

**Reports:**
- [Architecture Analysis](reports/ARCHITECTURE_ANALYSIS.MD) - Interface standardization & technical architecture analysis
- [Ecosystem Mapping](reports/ECOSYSTEM_MAPPING.MD) - Project profiles & delivery provider assessment
- [Standards Analysis](reports/STANDARDS_ANALYSIS.MD) - Evaluation of institutional and commercial space standards

## System Model (SysML v2)

The LORS standard is formally defined as a **SysML v2 textual model** in the [`model/`](model/) directory. This makes the standard machine-readable, version-controlled, and automatically verifiable — treating standards-as-code rather than standards-as-PDFs.

The model covers:
- **System architecture** — Rover classes (Heavy/Micro/Nano), subsystem decomposition, lander interfaces
- **40 formal requirements** — "Shall" statements with embedded constraint expressions for automated compliance checking
- **Standard interfaces** — Port definitions for power (28 VDC baseline), data (Ethernet/RS-422/Wi-Fi), and mechanical (CubeSat 10 cm grid)
- **Operational behaviors** — State machines, 15 command primitives, mission lifecycle
- **Applicable standards catalog** — CubeSat, CCSDS, LunaNet, ASTM E595, MIL-STD-461G, and more

All `.sysml` files are plain text and can be opened in any editor. For graphical visualization, use [Eclipse SysON](https://eclipse.dev/syson/) (free, open-source). See the [Model README](model/README.md) for details.

## Overview

The **Lunar Open-source Rover Standard (LORS)** aims to create a shared framework for designing, building, and operating lunar rovers, similar to how CubeSat standards unified satellite development. 

Currently, every team builds rovers differently, leading to wasted resources and fragmented innovation. 

LORS addresses this by establishing open standards that enable interoperability, reduce development costs, and accelerate lunar exploration.

## Problem

Every lunar rover team reinvents the wheel, using different communication systems, designs, and data formats. This results in:

- **Wasted resources**: Teams rebuild the same components repeatedly
- **Fragmented innovation**: Rovers cannot easily work together or share data
- **Slow progress**: Small teams (universities, startups, makers) lack reusable templates
- **Inefficient lunar economy**: Similar to satellites before CubeSat standards

## Benefits

### For the Space Sector
- Democratizes lunar exploration for citizens, students, and startups
- Reduces costs by eliminating redundant design cycles
- Accelerates innovation through cross-compatibility
- Builds foundation for sustainable, interoperable lunar economy

## Getting Involved

LORS is an open initiative. Ways to contribute:

- **Feedback on Research**: Review draft reports and provide input
- **Stakeholder Introductions**: Connect with lunar rover teams or delivery providers
- **Technical Expertise**: Share knowledge on rover standards or lunar operations
- **Community Outreach**: Help spread awareness of LORS

Join [MoonDAO Discord](https://discord.com/invite/moondao)

### How to Contribute

We welcome contributions from everyone! Whether you're a researcher, engineer, student, or space enthusiast, there are many ways to help.

📚 **Start here:**
- [Contributing Guide](CONTRIBUTING.MD) - Step-by-step instructions for everyone
- [How We Work](AI_WORKFLOW.MD) - Understand our AI-native workflow

**Quick ways to contribute:**
- Review and provide feedback on research reports
- Add or update information about rovers, landers, or missions
- Connect us with lunar rover teams or delivery providers
- Share technical expertise on rover standards
- Help spread awareness of LORS

Join [MoonDAO Discord](https://discord.com/invite/moondao) to get started!
