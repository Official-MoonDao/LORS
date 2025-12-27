This documents will contain list of relevant standards and documents


1. [CubeSat](https://www.cubesat.org/cubesatinfo)
2. [Standards for international docking system for space stations](https://www.internationaldockingstandard.com/)
3. [International deeps space interoperability standards](https://internationaldeepspacestandards.com/)
4. [International External Robotic Interface Interoperability Standard](https://explorers.larc.nasa.gov/HPMIDEX/pdf_files/17C_Robotics-020918_R1.pdf)
5. CCSDS
5.1 SOIS
5.2 XTCE
5.3 [ICSIS (International Communication System Interoperability Standard)](https://public.ccsds.org/Pubs/880x1b1.pdf) - Defines interfaces for Cislunar platforms.
6. [DiskSat](https://www.nasa.gov/smallspacecraft/disksat/) - A plate-shaped spacecraft design that maintains CubeSat containerization while offering more surface area for power and instruments.

## Lunar Interoperability Standards
*   **[LunaNet Interoperability Specification (LNIS)](https://www.nasa.gov/lunanet):** Core framework for lunar communications, navigation, and timing services (Draft v5). Relies on **Bundle Protocol (DTN v7)** for guaranteed delivery.
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

### Outgassing Material Databases
Searchable databases providing outgassing properties (TML, CVCM, RML) for thousands of aerospace materials.
*   **[NASA Outgassing Database (GSFC)](https://outgassing.nasa.gov/):** Public database from Goddard Space Flight Center containing data obtained per ASTM E595.
*   **[NASA MAPTIS](https://maptis.nasa.gov/):** NASA's primary database for materials and processes (registration required for full access).
*   **[ESA MODESA](https://modesa.esa.int/):** ESA's outgassing database featuring micro-VCM test results per ECSS-Q-ST-70-02C.
*   **[SPACEMATDB](https://www.spacematdb.com/):** Comprehensive space materials database integrating data from NASA and ESA.

## Launch Vehicle Payload User Guides (PUGs)
Detailed technical manuals providing specifications for payload integration, environmental conditions, and mission interfaces.

## Payload User Guides (PUGs)


### Launch Vehicles

Most overloads happens during launches, so it's important to understand the launch vehicle's environment.

> [!NOTE]
> Detailed PUGs for Russian **Angara** and Chinese **Long March 5** are often restricted or proprietary. Public information is usually limited to general performance specifications and fairing dimensions found in institutional brochures.


*   **[SpaceX Falcon Payload User's Guide](https://www.spacex.com/media/falcon_users_guide_082020.pdf):** Covers Falcon 9 and Falcon Heavy. Details mechanical interfaces, electrical interfaces, and environmental specifications.
*   **[SpaceX Starship Users Guide](https://www.spacex.com/media/starship_users_guide_v1.pdf):** Preliminary guide for Starship payload accommodations, including the 9m fairing volume and vertical integration.
*   **[Blue Origin New Glenn Payload User's Guide](https://www.blueorigin.com/assets/new-glenn-payload-users-guide.pdf):** (Revision C, 2018) provides an overview of the 7-meter fairing, payload interfaces, and launch environments.
*   **[Arianespace Soyuz User's Manual](https://www.arianespace.com/wp-content/uploads/2015/09/Soyuz-Users-Manual-March-2012.pdf):** Data for spacecraft compatibility with the Soyuz launch system (CSG version).
*   **[CGWIC Long March 3A Series User's Manual](http://www.cgwic.com/LaunchService/LM3A.html):** Covers LM-3A, LM-3B, and LM-3C. (Note: Specific PDF links often require direct request or portal access).
*   **[CGWIC Long March 2D User's Manual Reference](http://www.cgwic.com/LaunchService/LM2D.html):** Overview of the two-stage LEO/SSO launcher.

