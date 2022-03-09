/// Experimental Effects data scraped from Inara.

String unprocessedExperimentals = '''
    {
        "Angled Plating for Armours": {
            "Compact Composites": "5",
            "High Density Composites": "3",
            "Zirconium": "3"
        },
        "Angled Plating for Hull/Module Reinforcements": {
            "Tempered Alloys": "5",
            "Zirconium": "3",
            "Carbon": "5",
            "High Density Composites": "3"
        },
        "Auto Loader for Cannons, Multi-cannons": {
            "Mechanical Equipment": "4",
            "Mechanical Components": "3",
            "High Density Composites": "3"
        },
        "Blast Block for Shield Boosters": {
            "Inconsistent Shield Soak Analysis": "5",
            "Heat Resistant Ceramics": "3",
            "Heat Dispersion Plate": "3",
            "Selenium": "2"
        },
        "Boss Cells for Shield Cell Banks": {
            "Chemical Storage Units": "5",
            "Chromium": "3",
            "Polymer Capacitors": "1"
        },
        "Cluster Capacitors for Power Distributors": {
            "Phosphorus": "5",
            "Heat Resistant Ceramics": "3",
            "Cadmium": "1"
        },
        "Concordant Sequence for Pulse Lasers, Burst Lasers, Beam Lasers": {
            "Focus Crystals": "5",
            "Modified Embedded Firmware": "3",
            "Zirconium": "1"
        },
        "Corrosive Shell for Multi-cannons, Fragment Cannons": {
            "Chemical Storage Units": "5",
            "Precipitated Alloys": "4",
            "Arsenic": "3"
        },
        "Dazzle Shell for Plasma Accelerators, Fragment Cannons": {
            "Mechanical Scrap": "5",
            "Manganese": "4",
            "Hybrid Capacitors": "5",
            "Mechanical Components": "5"
        },
        "Deep Charge for Frame Shift Drives": {
            "Atypical Disrupted Wake Echoes": "5",
            "Galvanising Alloys": "3",
            "Eccentric Hyperspace Trajectories": "1"
        },
        "Deep Plating for Armours": {
            "Compact Composites": "5",
            "Mechanical Equipment": "3",
            "Molybdenum": "2"
        },
        "Deep Plating for Hull/Module Reinforcements": {
            "Compact Composites": "5",
            "Molybdenum": "3",
            "Ruthenium": "2"
        },
        "Dispersal Field for Plasma Accelerators, Cannons": {
            "Conductive Components": "5",
            "Hybrid Capacitors": "5",
            "Irregular Emission Data": "5",
            "Worn Shield Emitters": "5"
        },
        "Double Braced for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Configurable Components": "1"
        },
        "Double Braced for Thrusters": {
            "Iron": "5",
            "Hybrid Capacitors": "3",
            "Proprietary Composites": "1"
        },
        "Double Braced for Frame Shift Drives": {
            "Atypical Disrupted Wake Echoes": "5",
            "Galvanising Alloys": "3",
            "Configurable Components": "1"
        },
        "Double Braced for Power Plants": {
            "Grid Resistors": "5",
            "Vanadium": "3",
            "Proprietary Composites": "1"
        },
        "Double Braced for Power Distributors": {
            "Phosphorus": "5",
            "Heat Resistant Ceramics": "3",
            "Proprietary Composites": "1"
        },
        "Double Braced for Shield Cell Banks": {
            "Chemical Storage Units": "5",
            "Chromium": "3",
            "Yttrium": "1"
        },
        "Double Braced for Beam Lasers, Burst Lasers, Pulse Lasers, Multi-cannons, Plasma Accelerators, Fragment Cannons, Cannons, Rail Guns, Mine Launchers, Torpedo Pylons, Seeker Missiles, Dumb Missiles": {
            "Mechanical Scrap": "5",
            "Compact Composites": "5",
            "Vanadium": "3"
        },
        "Double Braced for Shield Boosters": {
            "Distorted Shield Cycle Recordings": "5",
            "Galvanising Alloys": "3",
            "Shield Emitters": "3"
        },
        "Drag Drives for Thrusters": {
            "Iron": "5",
            "Hybrid Capacitors": "3",
            "Security Firmware Patch": "1"
        },
        "Drag Munitions for Fragment Cannons, Seeker Missiles": {
            "Carbon": "5",
            "Grid Resistors": "5",
            "Molybdenum": "2"
        },
        "Drive Distributors for Thrusters": {
            "Iron": "5",
            "Hybrid Capacitors": "3",
            "Security Firmware Patch": "1"
        },
        "Emissive Munitions for Pulse Lasers, Multi-cannons, Seeker Missiles, Dumb Missiles, Mine Launchers": {
            "Mechanical Equipment": "4",
            "Unexpected Emission Data": "3",
            "Heat Exchangers": "3",
            "Manganese": "3"
        },
        "Fast Charge for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Compound Shielding": "1"
        },
        "Feedback Cascade for Rail Guns": {
            "Open Symmetric Keys": "5",
            "Shield Emitters": "5",
            "Filament Composites": "5"
        },
        "Flow Control for Power Distributors": {
            "Phosphorus": "5",
            "Heat Resistant Ceramics": "3",
            "Conductive Polymers": "1"
        },
        "Flow Control for Shield Cell Banks": {
            "Chemical Storage Units": "5",
            "Chromium": "3",
            "Conductive Polymers": "1"
        },
        "Flow Control for Beam Lasers, Burst Lasers, Pulse Lasers, Multi-cannons, Plasma Accelerators, Fragment Cannons, Cannons, Rail Guns, Mine Launchers, Torpedo Pylons, Seeker Missiles, Dumb Missiles": {
            "Mechanical Scrap": "5",
            "Hybrid Capacitors": "3",
            "Modified Embedded Firmware": "1"
        },
        "Flow Control for Shield Boosters": {
            "Inconsistent Shield Soak Analysis": "5",
            "Security Firmware Patch": "3",
            "Focus Crystals": "3",
            "Niobium": "3"
        },
        "Force Block for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Decoded Emission Data": "1"
        },
        "Force Block for Shield Boosters": {
            "Unidentified Scan Archives": "5",
            "Shielding Sensors": "3",
            "Aberrant Shield Pattern Analysis": "2"
        },
        "Force Shell for Cannons": {
            "Mechanical Scrap": "5",
            "Zinc": "5",
            "Phase Alloys": "3",
            "Heat Conduction Wiring": "3"
        },
        "FSD Interrupt for Dumb Missiles": {
            "Strange Wake Solutions": "3",
            "Anomalous FSD Telemetry": "5",
            "Mechanical Equipment": "5",
            "Configurable Components": "3"
        },
        "Hi-Cap for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Conductive Polymers": "1"
        },
        "High Yield Shell for Cannons": {
            "Mechanical Scrap": "5",
            "Proto Light Alloys": "3",
            "Chemical Manipulators": "3",
            "Nickel": "5"
        },
        "Incendiary Rounds for Multi-cannons, Fragment Cannons": {
            "Heat Conduction Wiring": "5",
            "Phosphorus": "5",
            "Sulphur": "5",
            "Phase Alloys": "3"
        },
        "Inertial Impact for Burst Lasers": {
            "Flawed Focus Crystals": "5",
            "Distorted Shield Cycle Recordings": "5",
            "Atypical Disrupted Wake Echoes": "5"
        },
        "Ion Disruption for Mine Launchers": {
            "Sulphur": "5",
            "Phosphorus": "5",
            "Chemical Distillery": "3",
            "Electrochemical Arrays": "3"
        },
        "Layered Plating for Armours": {
            "Heat Conduction Wiring": "5",
            "High Density Composites": "3",
            "Niobium": "1"
        },
        "Layered Plating for Hull/Module Reinforcements": {
            "Heat Conduction Wiring": "5",
            "Shielding Sensors": "3",
            "Tungsten": "3"
        },
        "Lo-draw for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Conductive Polymers": "1"
        },
        "Mass Lock Munition for Torpedo Pylons": {
            "Mechanical Equipment": "5",
            "High Density Composites": "3",
            "Aberrant Shield Pattern Analysis": "3"
        },
        "Mass Manager for Frame Shift Drives": {
            "Atypical Disrupted Wake Echoes": "5",
            "Galvanising Alloys": "3",
            "Eccentric Hyperspace Trajectories": "1"
        },
        "Monstered for Power Plants": {
            "Grid Resistors": "5",
            "Vanadium": "3",
            "Polymer Capacitors": "1"
        },
        "Multi-servos for Pulse Lasers, Burst Lasers, Cannons, Multi-cannons, Plasma Accelerators, Rail Guns, Fragment Cannons, Seeker Missiles, Dumb Missiles": {
            "Mechanical Scrap": "5",
            "Focus Crystals": "4",
            "Conductive Polymers": "2",
            "Configurable Components": "2"
        },
        "Multi-weave for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Aberrant Shield Pattern Analysis": "1"
        },
        "Overload Munitions for Seeker Missiles, Dumb Missiles, Mine Launchers": {
            "Filament Composites": "5",
            "Tagged Encryption Codes": "4",
            "Aberrant Shield Pattern Analysis": "2",
            "Germanium": "3"
        },
        "Oversized for Beam Lasers, Burst Lasers, Pulse Lasers, Multi-cannons, Plasma Accelerators, Fragment Cannons, Cannons, Rail Guns, Mine Launchers, Torpedo Pylons, Seeker Missiles, Dumb Missiles": {
            "Mechanical Scrap": "5",
            "Mechanical Components": "3",
            "Ruthenium": "1"
        },
        "Penetrator Munitions for Dumb Missiles": {
            "Galvanising Alloys": "5",
            "Electrochemical Arrays": "3",
            "Zirconium": "3"
        },
        "Penetrator Payload for Torpedo Pylons": {
            "Mechanical Components": "3",
            "Tungsten": "3",
            "Anomalous Bulk Scan Data": "5",
            "Selenium": "3"
        },
        "Phasing Sequence for Pulse Lasers, Burst Lasers, Plasma Accelerators": {
            "Focus Crystals": "5",
            "Aberrant Shield Pattern Analysis": "3",
            "Niobium": "3",
            "Configurable Components": "3"
        },
        "Plasma Slug for Plasma Accelerators": {
            "Heat Exchangers": "3",
            "Modified Embedded Firmware": "2",
            "Refined Focus Crystals": "2",
            "Mercury": "4"
        },
        "Plasma Slug for Rail Guns": {
            "Heat Exchangers": "3",
            "Modified Embedded Firmware": "2",
            "Refined Focus Crystals": "2",
            "Mercury": "4"
        },
        "Radiant Canister for Mine Launchers": {
            "Polonium": "1",
            "Phase Alloys": "3",
            "Heat Dispersion Plate": "4"
        },
        "Recycling Cell for Shield Cell Banks": {
            "Chemical Storage Units": "5",
            "Chromium": "3",
            "Configurable Components": "1"
        },
        "Reflective Plating for Armours": {
            "Compact Composites": "5",
            "Heat Dispersion Plate": "3",
            "Thermic Alloys": "2"
        },
        "Reflective Plating for Hull/Module Reinforcements": {
            "Heat Conduction Wiring": "5",
            "Heat Dispersion Plate": "3",
            "Proto Light Alloys": "1",
            "Zinc": "4"
        },
        "Regeneration Sequence for Beam Lasers": {
            "Refined Focus Crystals": "3",
            "Shielding Sensors": "4",
            "Peculiar Shield Frequency Data": "1"
        },
        "Reverberating Cascade for Torpedo Pylons, Mine Launchers": {
            "Configurable Components": "2",
            "Classified Scan Databanks": "3",
            "Filament Composites": "4",
            "Chromium": "4"
        },
        "Scramble Spectrum for Pulse Lasers, Burst Lasers": {
            "Crystal Shards": "5",
            "Untypical Shield Scans": "3",
            "Exceptional Scrambled Emission Data": "5"
        },
        "Screening Shell for Fragment Cannons": {
            "Mechanical Scrap": "5",
            "Distorted Shield Cycle Recordings": "5",
            "Modified Consumer Firmware": "5",
            "Niobium": "3"
        },
        "Shift-lock Canister for Mine Launchers": {
            "Tempered Alloys": "5",
            "Strange Wake Solutions": "3",
            "Salvaged Alloys": "5"
        },
        "Smart Rounds for Cannons, Multi-cannons": {
            "Mechanical Scrap": "5",
            "Security Firmware Patch": "3",
            "Decoded Emission Data": "3",
            "Classified Scan Databanks": "3"
        },
        "Stripped Down for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Proto Light Alloys": "1"
        },
        "Stripped Down for Thrusters": {
            "Iron": "5",
            "Hybrid Capacitors": "3",
            "Proto Light Alloys": "1"
        },
        "Stripped Down for Frame Shift Drives": {
            "Atypical Disrupted Wake Echoes": "5",
            "Galvanising Alloys": "3",
            "Proto Light Alloys": "1"
        },
        "Stripped Down for Power Plants": {
            "Grid Resistors": "5",
            "Vanadium": "3",
            "Proto Light Alloys": "1"
        },
        "Stripped Down for Power Distributors": {
            "Phosphorus": "5",
            "Heat Resistant Ceramics": "3",
            "Proto Light Alloys": "1"
        },
        "Stripped Down for Shield Cell Banks": {
            "Chemical Storage Units": "5",
            "Chromium": "3",
            "Proto Light Alloys": "1"
        },
        "Stripped Down for Beam Lasers, Burst Lasers, Pulse Lasers, Multi-cannons, Plasma Accelerators, Fragment Cannons, Cannons, Rail Guns, Mine Launchers, Torpedo Pylons, Seeker Missiles, Dumb Missiles": {
            "Salvaged Alloys": "5",
            "Carbon": "5",
            "Tin": "1"
        },
        "Super Capacitors for Shield Boosters": {
            "Untypical Shield Scans": "3",
            "Compact Composites": "5",
            "Cadmium": "2"
        },
        "Super Conduits for Power Distributors": {
            "Phosphorus": "5",
            "Heat Resistant Ceramics": "3",
            "Security Firmware Patch": "1"
        },
        "Super Penetrator for Rail Guns": {
            "Proto Light Alloys": "3",
            "Refined Focus Crystals": "3",
            "Zirconium": "3",
            "Untypical Shield Scans": "5"
        },
        "Target Lock Breaker for Plasma Accelerators": {
            "Selenium": "5",
            "Security Firmware Patch": "3",
            "Adaptive Encryptors Capture": "1"
        },
        "Thermal Cascade for Cannons, Seeker Missiles, Dumb Missiles": {
            "Heat Conduction Wiring": "5",
            "Hybrid Capacitors": "4",
            "High Density Composites": "3",
            "Phosphorus": "5"
        },
        "Thermal Conduit for Beam Lasers, Plasma Accelerators": {
            "Heat Dispersion Plate": "5",
            "Sulphur": "5",
            "Tempered Alloys": "5"
        },
        "Thermal Shock for Pulse Lasers, Burst Lasers, Beam Lasers, Multi-cannons": {
            "Flawed Focus Crystals": "5",
            "Heat Resistant Ceramics": "3",
            "Conductive Components": "3",
            "Tungsten": "3"
        },
        "Thermal Spread for Thrusters": {
            "Iron": "5",
            "Hybrid Capacitors": "3",
            "Heat Vanes": "1"
        },
        "Thermal Spread for Frame Shift Drives": {
            "Atypical Disrupted Wake Echoes": "5",
            "Galvanising Alloys": "3",
            "Heat Vanes": "1",
            "Grid Resistors": "3"
        },
        "Thermal Spread for Power Plants": {
            "Grid Resistors": "5",
            "Vanadium": "3",
            "Heat Vanes": "1"
        },
        "Thermal Vent for Beam Lasers": {
            "Flawed Focus Crystals": "5",
            "Conductive Polymers": "3",
            "Precipitated Alloys": "3"
        },
        "Thermo Block for Shield Generators": {
            "Worn Shield Emitters": "5",
            "Flawed Focus Crystals": "3",
            "Heat Vanes": "1"
        },
        "Thermo Block for Shield Boosters": {
            "Anomalous Bulk Scan Data": "5",
            "Conductive Ceramics": "3",
            "Heat Vanes": "3"
        }
    }
''';
