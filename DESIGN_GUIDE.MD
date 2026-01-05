# LORS Design Guide

**Date:** 2025-11-23

## Overview

A short overview of the LORS design guide and its scope.

## Purpose
Below are a list of design concepts or principles we should consider for inclusion in the LORS standards, either directly or as guiding principles to measure success. 
- Maximize innovation, acceleration from design to flight, and reliability.
- Minimize cost, design/build/testing time, and barriers to entry.
- Address the financial and cognitive limitations of designers constructively to remove barriers to entry for students and entry level team members. 
- **Counter Vendor Lock-in**: Provide an open interoperability standard to counter natural commercial tendencies towards proprietary silos. Individual companies often lack the incentive to ensure plug-and-play compatibility; this standard aims to bridge that gap. 


## CubeSat Standards Integration
### Description
Use the CubeSat design parameters and hardware catalog where possible with lunar rover designs.
### Background
CubeSat standards have provided a successful model and a broad range of space-rated yet semi-affordable (10-30X consumer grade) parts and systems for decades.  Leveraging this inventory and the skills to integrate these components into flight-ready systems significantly reduces the development friction at every level (standard adoption, bill of material creation, learning curves, tech readiness levels).
### Principles
Most CubeSat standards will be integrated internally where applicable.  For example, circuit boards and batteries that fit in 10cm cubes, as well as multi-U systems such as 6 U mini satellites.
Since the CubeSat standard is not for lunar rovers, the limitations of this standard will be taken into account and extended where appropriate.  For example, the mobility chassis interior may be broken into 10 cm “voxels” to simplify integration of hardware, but the components can extend for as many U as needed.  
### Design Levels
Initial design to flight models.
### Specifics
- Adopt CubeSat standards and parts lists where they would work. 
- Design frameworks for rovers that allow for 10 cm (1 U) components, connectors, power systems, and so on.
- If CubeSat standards and equipment will not work for LORS, and they are evaluated as not working, document why they are unworkable in brief.  This shows which have been evaluated and which have not, and why they were rejected.  If something changes later or someone wants to use them anyway, they know why the rejection took place and if the conditions leading to the rejection apply or are tangential to their reasons for wanting to incorporate it.
- LORS would adapt with CubeSat changes over time where practical.  If not practical, the forks would be well documented on the LORS side.

## Dual TRL Component Options
### Description
Where possible, standardize dual technology readiness level units with at least one ground-dev unit and one flight-ready unit available.  
### Background
In some cases, there are both COTS and a space-rated versions of a technology with a similar form factor, often from the same vendor.  The COTS version allows affordable prototyping and terrestrial spin-offs and the space rated version can be used for flight.  Note that the terrestrial spin-offs can be sold to help fund the flight version, and the flight version is great marketing for the terrestrial version.
### Principles
The “cheap off the shelf” (COTS) version of a battery or circuit board allows much more affordable prototyping through early tech readiness levels, and faster pivoting.  For example, if the off the shelf version of a computer is 10% of the price of the flight version, then ten different machines can be used for development in parallel and A/B tested to optimize the system prior to flight.  During and after flight, having parallel ground units lets the designers check multiple failure scenarios at once during troubleshooting.  If the product has a commercial spin-off, that system can be built with these non-flight rated electronics to compete on price and supply chain more readily.
### Design Levels
Some of this is already part of standard CubeSat and other flight prototyping systems.  Those would be adopted here and expanded for LORS where appropriate.
### Specifics
Initial work may be simple things like edge connectors for computing units, ports, etc.  Expand to include catalog standards for flight and non-flight prototyping components.  

When reviewing components to include in certified part catalogs, include where possible the non-flight version of the technology if it is more affordable than the flight version. 
Document in brief what design changes will be needed to move from the commercial to flight versions of the item (avoid scratching anodized surfaces during assembly to avoid vacuum welding, vacuum-tolerant lubrication (graphite), etc.)

## Battery Standards
### Description
Design two standard battery technologies with the same form factors – one for daylight only use and one designed to withstand lunar nightfall (either super insulated active heating or freeze-tolerant chemistry). Also have “warm” standards for lava tubes/peaks of sunlight at the poles and “cryo” standards for Shackelton crater, etc.
### Background
While some lunar robotic landers are designed to revive when the sun comes up, most have battery technology that does not permit this.  Note that government funded missions that survive usually do so because they have radioisotope heaters incorporating tiny amounts of plutonium – not a technology LORS will be able to use. LORS may be a good pioneering standard for coming up with a low cost, two week battery tech using super-insulated compartments and allocating a small amount of power to an electric heating system.  Alternatively a rover only trying to survive 1-2 nights or in shorter polar nights may opt to invent a chemical heating system. We also need standards for low-extremes like lava tubes and high extremes like permanently shadowed craters.  The extreme cold version may opt for short dips and returns lasting less than an hour to minimize stress.
### Principles
Depending on the mission, both options should be standardized.
If a new technology or method is invented that does not fit in the form factor, a “waiver” and “spec bump” path should be put in place to test and standardize on the new technology. For example, if a team want to experiment with a combination battery, heater, insulated container, etc. that exceeds the frame space normally allotted for the power system, the next size up should be allowed.  If the design is then field proven, a new overnight battery system module should be allowed in the catalog.
### Design Levels
Battery and power management, as well as electronics selection (super-cold boot after being frozen two weeks).
### Specifics
- Design a standard for daylight use that can withstand solar heating extremes and dump heat where possible.
- Design a day/night standard with great thermal insulation and possible active heating of the battery or design a cold-tolerant battery that can be revived even after freezing.
- Design a “warm” standard for rovers that stay in peaks with near-constant sunlight and are not subject to such extreme temperature changes, day or night. This may also be used for lava tube explorers.
- Design a polar “cryogenic” standard for short dips into permanently shadowed craters.  

- All batteries should be rated where possible for all conditions.  For example, a night-rated battery could probably do short drives into a permanently shadowed crater.  A warm rated battery may work in the early morning and late evening thermal conditions.

## Modular Frame Mounts
### Description
Key subsystems with multiple possible inventions (wheels, suspensions, drive motors) should be modular in such a way as to maximize invention options rather than restrict them. 
### Background
NASA is currently running a lunar wheel design competition where every entry must fit the wheel on a specific test rover platform and be restricted in size and axial mounting.  While fine for a wheel competition, it eliminates other workable systems like caterpillar tracks or externally-mounted wrap-around drive trains to maximize clearance under a vehicle.  During contest Q&A, many questions were about trying to rig non-standard drive systems to this wheel mounting setup.
Since rover technology is (theoretically) on the threshold of a Cambrian explosion (dozens of concepts to try that have not settled into specific optimized zones of the solution space), we should make a standardization platform which fosters innovation while still allowing for basic, turnkey drive systems.
### Principles
Design mobility systems (wheels, caterpillar tracks, legs, etc.) can be swapped for dissimilar locomotion modules.  That said, keep a standard set of affordable module designs in inventory that are iteratively improved (wheels with drive systems). This will lower costs and complexity for missions where locomotion is not an engineering experiment, but allows lots of options if locomotion innovation is one of the featured engineering concepts.
### Design Levels
From design forward.  There will be a dichotomy between rovers where locomotion innovation is in scope or out of scope.  Having a stock drive system option and a modular drive mount option removes obstructions from both paths. This should be repeated with each size rover in the system.
### Specifics
The locomotion platform should be a bit like the “skateboard” concept from early electric car designs – where the batteries, wheels, and everything in between are confined to a low deck on which the rest of the rover is constructed. 
The wheel units for this deck should allow for multiple wheel diameters and drive motor mounting options.  It should also allow for tricycle, half-track, rocker-bogie, and any other drive system the designers find appropriate.
The drive power systems and command/control power systems may be unified

## Swappable Electronics Modules
### Description
Design standardized hardware units (computing, servo control, power management, data storage, transmitters, batteries, etc.) that plug into sockets.  Once plugged in, the handshake with the rover will inform the unit which role it is performing and give it everything it needs to configure itself rapidly and assume that role.  So a servo control module is informed which servos it is controlling and locks into that role within seconds or minutes of being inserted.  The software may be on network, pre-loaded for all mission roles on the module, or both.
### Background
A concept from Formula 1 racing where pit-stop changes are measured in seconds, that was used by a University Rover Challenge team to rapidly swap equipment during the 30-minute turn-over between events. Essentially While the obvious benefit is being able to meet launch windows and buy off-the shelf hardware, the secondary benefit opens the possibility of field-servicing or self-repairing lunar hardware.  It also simplifies the NASA standard of multiple computers on warm standby (two for Galileo, five for the Space Shuttle with a cold spare in storage, etc.) to build highly robust systems where adding compute or power units is as simple as adding drives to a NAS storage cabinet.
### Principles
Where possible and practical, design universal units that can be modularized for power generation, storage, distribution, control.  Also for manipulation, locomotion, computing, sensory equipment, communications, data storage, and thermal management. Design frameworks, seals, and mounts for ready access and swapping of components – ideally by simple robotic arms in field conditions.
Ideally, a component should be designed so that it can be inserted “cold” into any system and determine its role in the system automatically.  This can be pre-scripted in a non-volatile memory unit on the board for a given mission, or loaded via the data connection to the system.  Or it may simply be too basic to require this level of customization (batteries, etc.).
### Design Levels
This provides a clean break between rover scale assembly of “Legos” and the optimization of systems that fit in each design category.  Different vendors can offer different capabilities in the same form factor.
### Specifics
Systems should be flexible for high power channels.  This may mean including wider connections for power pass-through even if no current vendor uses that part of the connector (think a modular power supply in a gaming PC, but for drive motors, solar panels, etc.)
Consider common connections for structural load, power, and data – both internally and externally.
Consider a system that allows simple open, remove, replace, close mechanics to swap out common components and do automated field repairs.  

## Full Deck Design Philosophy
### Description
The component catalog should be restricted to approximately 50 principle components that can be arranged, stacked, or otherwise configured into 95 percent of the missions expected in the next 10-20 years.
### Background
Humans tend to chunk things in blocks of seven, though we can handle grids of 7 by 7 or 49 cells in a common matrix with high mental dexterity.  Hence the popularity of the 52 playing card deck.  This is also a good component load for a “Turing complete” solution set of tools to design universalized systems. Systems with too many components tend to be locked in by their own complexity (Scrabble) whereas ones with too few components are also limited (dice).
### Principles
Since a person is generally able to handle these sets of ~ 50 components from memory, more designs will be created by more designers with greater speed than would happen with systems that overwhelm the natural “component capacity”.
### Principles
- Try to design the standards in seven categories of seven components, where possible.  Do not artificially constrain or expand sets, but gravitate toward this taxonomy array where possible.
- For the components themselves, mirror this “chunking” of complexity where possible to simplify the learning curve of users.
- Try to design components that can be learned in under two weeks with some level of functional mastery. 
### Design Levels
Applies to the standard itself, but extends to subcomponents.
### Specifics
Consider clustering standards in seven blocks of seven rules.
Where systems exceed this ability to capture the concept, break that system into its own block of 50 parameters and describe it as a complete, self-contained system (a given chip or drive train, for example). This allows generalists to see it from the outside as a single system and specialists to work within that system in detail. Most systems can be broken down into a 7 x 7 x 7 third dimension of organization, or 343 components of organizational structure.  Mentally, one simply flips from the X-Y axis of a single subject or scale to the X-Z or Y-Z grid if the taxonomy is clearly three dimensional. 

## Software & Simulation First
### Description
Prioritize software architecture and simulation environments as a primary design driver, often placing them ahead of hardware decisions.
### Background
Software architectures are frequently more critical to mission success than hardware architectures but are often overlooked in early design phases.  A robust simulation environment allows for rapid iterator and validation of logic before metal is cut. "Digital Twins" are standard in advanced industry; LORS should democratize this.
### Principles
*   **Simulate First**: Development should begin in a high-fidelity simulation environment.
*   **Hardware Abstraction**: Software should be written to run on the standard, not just the specific hardware instance, allowing portability.
### Design Levels
System Architecture.
### Specifics
*   Include standard simulation environments (e.g., Gazebo, Unity-based sims) as part of the core LORS release.
*   Define hardware specifications by their software interfaces (APIs) first.

## Interoperability & Mesh Networks
### Description
Extend the concept of modularity from "parts within a rover" to "interoperability between rovers."
### Background
In a multi-vendor lunar future, rovers from different organizations should be able to communicate, share data, and potentially aid one another.  Without a standard, vendors will build closed ecosystems (silos).  Passive mesh networking allows rovers to act as relays for one another, extending range and resilience.
### Principles
*   **Silo-Breaking**: Explicitly design interfaces that allow Competitor A's rover to talk to Competitor B's lander or rover.
*   **Mesh Native**: Command and Control (C2) architectures should default to assuming a mesh capability.
### Design Levels
Communications and C2 Architecture.
### Specifics
*   Standardize protocols for passive mesh networking.
*   Define common data exchange formats for situational awareness (location, obstacles, battery status) to allow cooperative behavior. 




## Action Items

1. Draft uploaded - Kent Nebergall
2. Review draft — (team admin)

## Notes

Add any relevant notes, links or references here.

## Revision History

- 2025-11-23: Created as `LORS Design Guide`
