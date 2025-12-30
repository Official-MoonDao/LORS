This documents will contain list of relevant standards and documents


1. [CubeSat](https://www.cubesat.org/cubesatinfo)
2. [Standards for international docking system for space stations](https://www.internationaldockingstandard.com/download/IDSS_IDD_Revision_F.pdf)
3. [International deep space interoperability standards](https://internationaldeepspacestandards.com/)
   - [Software Baseline](https://internationaldeepspacestandards.com/wp-content/uploads/2024/02/software_baseline_final_9-2020.pdf)
   - [Thermal Baseline](https://internationaldeepspacestandards.com/wp-content/uploads/2024/02/thermal_baseline_final_8-2019.pdf)
   - [Robotic Baseline](https://internationaldeepspacestandards.com/wp-content/uploads/2024/02/robotic_baseline_final_3-2019.pdf)
   - [Rendezvous Baseline](https://internationaldeepspacestandards.com/wp-content/uploads/2024/02/rendezvous_baseline_final_3-2019.pdf)
   - [ISPSIS (Power System)](https://internationaldeepspacestandards.com/wp-content/uploads/2024/02/ISPSIS-RevA-20220727-2.pdf)
   - [ICSIS (International Communication System Interoperability Standard)](https://internationaldeepspacestandards.com/wp-content/uploads/2025/03/M2M-30202-ICSIS_RevB_Final.pdf) - Defines interfaces for Cislunar platforms.
4. [International External Robotic Interface Interoperability Standard](https://explorers.larc.nasa.gov/HPMIDEX/pdf_files/17C_Robotics-020918_R1.pdf)
5. [CCSDS (Consultative Committee for Space Data Systems)](https://public.ccsds.org/)
   - **[SOIS (Spacecraft Onboard Interface Services)](https://public.ccsds.org/Pubs/850x0g2.pdf):** A suite of standards simplifying the interaction between flight software and hardware (e.g., sensors, actuators) using standardized services and Electronic Data Sheets (EDS).
   - **[XTCE (XML Telemetric and Command Exchange)](https://public.ccsds.org/Pubs/660x0b2.pdf):** XML-based standard for exchanging telemetry and command databases between different mission phases and organizations, ensuring data definition consistency.
6. [DiskSat](https://www.nasa.gov/smallspacecraft/disksat/) - A plate-shaped spacecraft design that maintains CubeSat containerization while offering more surface area for power and instruments.

## Lunar Interoperability Standards
*   **[LunaNet Interoperability Specification (LNIS)](https://www.nasa.gov/wp-content/uploads/2025/02/lunanet-interoperability-specification-v5-baseline.pdf?emrc=606f95):** Core framework for lunar communications, navigation, and timing services (v5 Baseline). Relies on **Bundle Protocol (DTN v7)** for guaranteed delivery.
*   **[LunaNet Signal-In-Space Recommended Standard - Augmented Forward Signal](https://www.nasa.gov/wp-content/uploads/2025/02/lunanet-signal-in-space-recommended-standard-augmented-forward-signal-vol-a.pdf?emrc=0f6993)**
*   **[ESA Moonlight](https://www.esa.int/Applications/Connectivity_and_Secure_Communications/Moonlight):** Satellite constellation initiative fully adopting LNIS standards.
*   **Lunar Surface Connectivity:** Usage of **4G/LTE** for proximity communications (Nokia/Lunar Outpost/Intuitive Machines).

## Environmental & Testing Standards
*   **ISO 10788:** Lunar Simulants (standard lunar soil analogues for mobility testing).

## Outgassing & Materials Standards
*   **[ASTM E595](https://www.astm.org/e0595-15.html):** Standard Test Method for Total Mass Loss (TML) and Collected Volatile Condensable Materials (CVCM) from Outgassing in a Vacuum Environment.
    *   **Acceptance Criteria:** TML < 1.0%, CVCM < 0.1%.
*   **[NASA-STD-6016](https://standards.nasa.gov/standard/nasa/nasa-std-6016):** Standard Materials and Processes Requirements for Spacecraft. References **NASA-STD-6001B Test 7** for offgassing.
*   **[ECSS-Q-ST-70-02C](https://ecss.nl/standard/ecss-q-st-70-02c-thermal-vacuum-outgassing-test-for-the-screening-of-space-materials/):** ESA's Thermal vacuum outgassing test for the screening of space materials.
*   **ISO 14624-3:** Determination of offgassed products from materials and assembled articles for manned, pressurized spacecraft.

## EMI/EMC (Electromagnetic Interference & Compatibility)
Payload User Guides (PUGs) specify EMI/EMC standards to ensure that electronic equipment behaves correctly in the integrated spacecraft environment.

### Primary Standards
*   **[MIL-STD-461](https://quicksearch.dla.mil/qsDocDetails.aspx?ident_number=35634):** Requirements for the Control of Electromagnetic Interference Characteristics of Subsystems and Equipment. The most common standard for US and international missions.
    *   **MIL-STD-461G:** Current version often used for CLPS missions.
*   **[ECSS-E-ST-20-07C](https://ecss.nl/standard/ecss-e-st-20-07c-rev-1-electromagnetic-compatibility/):** ESA's detailed system requirements for electromagnetic compatibility.
*   **[GJB 151B-2013](https://gjb151b.com/):** Chinese Military Standard for EMI/EMC, applicable to space systems and used for CNSA missions.
*   **[GOST R 51317 (Series)](https://russiangost.com/):** Russian national standard for EMC, derived from IEC standards. Used by Roscosmos for space systems (e.g., GOST R 51317.4.2 for ESD).
*   **ISRO EMI/EMC Standard:** ISRO's internal standard (updated 2021), historically derived from MIL-STD-461C.

### EMI Standards per Lander/PUG

| Provider / Lander | Primary Standard | Key Tests / Notes |
| :--- | :--- | :--- |
| **Astrobotic (Peregrine/Griffin)** | **MIL-STD-461G** | Specifically: CE102, CS101, CS114, CS115, CS116, RE102, RS103. |
| **Firefly (Blue Ghost)** | **MIL-STD-461** | Tailored requirements; requires NDA for full specification. Testing at JPL. |
| **Intuitive Machines (Nova-C)** | **MIL-STD-461 / GEVS-SE** | Adheres to NASA Goddard GSFC-STD-7000 (GEVS) criteria. |
| **ispace (APEX 1.0)** | **MIL-STD-461** | Compliance required for CLPS delivery and Falcon 9 compatibility. |
| **ESA (Argonaut / EL3)** | **ECSS-E-ST-20-07C** | Mandatory for European payloads on the Argonaut lander. |
| **CNSA (Chang'e 7 & 8)** | **GJB 151B-2013** | Standard for Chinese lunar exploration payloads. |
| **Roscosmos (Luna-25/27)** | **GOST R 51317** | Russian national standards for EMC; proprietary PUG tailoring. |
| **ISRO (Chandrayaan-3)** | **ISRO tailored MIL-STD-461C** | Uses updated 2021 internal standards for lander/rover compatibility. |

### Outgassing Material Databases
Searchable databases providing outgassing properties (TML, CVCM, RML) for thousands of aerospace materials.
*   **[NASA Outgassing Database (GSFC)](https://outgassing.nasa.gov/):** Public database from Goddard Space Flight Center containing data obtained per ASTM E595.
*   **[NASA MAPTIS](https://maptis.nasa.gov/):** NASA's primary database for materials and processes (registration required for full access).
*   **[ESA MODESA](https://modesa.esa.int/):** ESA's outgassing database featuring micro-VCM test results per ECSS-Q-ST-70-02C.
*   **[SPACEMATDB](https://www.spacematdb.com/):** Comprehensive space materials database integrating data from NASA and ESA.

## Launch Vehicle Payload User Guides (PUGs)

Detailed technical manuals providing specifications for payload integration, environmental conditions, and mission interfaces.

> **Note:** Payload User Guides are updated periodically. Always verify you have the latest version from the provider's official website before mission planning.

### Launch Vehicles

Most overloads happen during launch, so understanding the launch vehicle's environment is critical for payload design.

| Vehicle | Provider | Latest Version | Official Link | Notes |
| :--- | :--- | :--- | :--- | :--- |
| **Falcon 9 / Heavy** | SpaceX | Mar 2025 | [SpaceX Falcon 9 Page](https://www.spacex.com/vehicles/falcon-9/) | Download via "User's Guide" button. Covers both vehicles. |
| **Rideshare** | SpaceX | Sep 2024 (v10) | [SpaceX Rideshare Page](https://www.spacex.com/rideshare/) | Smallsat rideshare-specific requirements. |
| **Starship** | SpaceX | v1 (Preliminary) | [SpaceX Starship Page](https://www.spacex.com/vehicles/starship/) | Preliminary guide; evolving specifications. |
| **New Glenn** | Blue Origin | Oct 2018 (Rev C) | [Blue Origin New Glenn](https://www.blueorigin.com/new-glenn/) | 7m fairing; first flight completed Jan 2025. |
| **Vulcan Centaur** | ULA | Oct 2023 | [ULA Payload User Guides](https://www.ulalaunch.com/resources/payload-user-guides) | Replaces Atlas V and Delta IV. |
| **Ariane 6** | Arianespace | Issue 2 (2024) | [ArianeGroup Users Manual](https://www.ariane.group/en/our-operational-launch-systems/ariane-6/ariane-6-users-manual/) | First flight July 2024. |
| **Electron** | Rocket Lab | v7.0 (Nov 2022) | [Rocket Lab Launch](https://www.rocketlabcorp.com/launch) | Contact for full PUG; 200-300 kg to SSO. |
| **Long March 5** | CGWIC | Restricted | [CGWIC Service Page](http://www.cgwic.com/) | Detail PDFs require direct request. |
| **Long March 3A Series** | CGWIC | Varies | [CGWIC LM-3A Page](http://www.cgwic.com/LaunchService/LM3A.html) | Covers LM-3A, LM-3B, LM-3C. |
| **Angara** | Roscosmos | Restricted | Contact Roscosmos | Russian heavy-lift; limited public documentation. |

> **Caution:** Detailed PUGs for Russian **Angara**, Chinese **Long March 5**, and some other vehicles are often restricted or proprietary. Public information is usually limited to general performance specifications found in institutional brochures.

### Lunar Landers
Technical specifications for landing systems, payload mounting, power, and data interfaces on the lunar surface.

#### Commercial (CLPS & International)
*   **[Astrobotic Peregrine & Griffin PUGs](https://www.astrobotic.com/lunar-delivery/landers/):** Detailed manuals for small (Peregrine) and medium (Griffin) class landers. Standard 28V power and transponder-based data relay.
*   **[Intuitive Machines Nova-C](https://www.intuitivemachines.com/lunar-services):** (CLPS) 130-150kg capacity. Supports 28V, 12V, or 5V power and 8Mbps data transfer.
*   **[Firefly Blue Ghost](https://fireflyspace.com/missions/blue-ghost-mission-1/):** Support for up to 155kg. Full technical PUG available to customers under NDA.
*   **[ispace / Draper APEX 1.0](https://ispace-inc.com/news-release/20230928/):** Based on ispace Series 2. Modular design with 500kg surface delivery capacity. Full PUG available upon request.

#### Institutional & International
*   **[ESA Argonaut (EL3)](https://www.esa.int/Science_Exploration/Human_and_Robotic_Exploration/Exploration/Argonaut):** European Large Logistics Lander. Design capacity for 1,500kg - 2,100kg of cargo. Uses standardized Cargo Platform Element interface.
*   **[ISRO Chandrayaan-3 (Vikram)](https://www.isro.gov.in/Chandrayaan3_Details.html):** Technical overview of lander/rover payloads (ChaSTE, ILSA, RAMBHA-LP).
*   **[CNSA Chang'e 7 & 8 AO](http://www.cnsa.gov.cn/):** Announcements of Opportunity with rigid mass/power/volume constraints for international payloads (e.g., Chang'e-8: 100kg total, 200W total power, ≤50W per payload).
