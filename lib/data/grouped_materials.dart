/// Material data scraped from Inara. The data is
/// formatted into `name`, `grade`, `section` and `kind`
/// properties.
final String unprocessed = '''
    [
        {
            "name": "Aberrant Shield Pattern Analysis",
            "grade": 4,
            "section": "Shield data",
            "kind": "Encoded"
        },
        {
            "name": "Abnormal Compact Emissions Data",
            "grade": 5,
            "section": "Emission data",
            "kind": "Encoded"
        },
        {
            "name": "Adaptive Encryptors Capture",
            "grade": 5,
            "section": "Encryption files",
            "kind": "Encoded"
        },
        {
            "name": "Anomalous Bulk Scan Data",
            "grade": 1,
            "section": "Data archives",
            "kind": "Encoded"
        },
        {
            "name": "Anomalous FSD Telemetry",
            "grade": 2,
            "section": "Wake scans",
            "kind": "Encoded"
        },
        {
            "name": "Atypical Disrupted Wake Echoes",
            "grade": 1,
            "section": "Wake scans",
            "kind": "Encoded"
        },
        {
            "name": "Atypical Encryption Archives",
            "grade": 4,
            "section": "Encryption files",
            "kind": "Encoded"
        },
        {
            "name": "Classified Scan Databanks",
            "grade": 3,
            "section": "Data archives",
            "kind": "Encoded"
        },
        {
            "name": "Classified Scan Fragment",
            "grade": 5,
            "section": "Data archives",
            "kind": "Encoded"
        },
        {
            "name": "Cracked Industrial Firmware",
            "grade": 3,
            "section": "Encoded Firmware",
            "kind": "Encoded"
        },
        {
            "name": "Datamined Wake Exceptions",
            "grade": 5,
            "section": "Wake scans",
            "kind": "Encoded"
        },
        {
            "name": "Decoded Emission Data",
            "grade": 4,
            "section": "Emission data",
            "kind": "Encoded"
        },
        {
            "name": "Distorted Shield Cycle Recordings",
            "grade": 1,
            "section": "Shield data",
            "kind": "Encoded"
        },
        {
            "name": "Divergent Scan Data",
            "grade": 4,
            "section": "Data archives",
            "kind": "Encoded"
        },
        {
            "name": "Eccentric Hyperspace Trajectories",
            "grade": 4,
            "section": "Wake scans",
            "kind": "Encoded"
        },
        {
            "name": "Exceptional Scrambled Emission Data",
            "grade": 1,
            "section": "Emission data",
            "kind": "Encoded"
        },
        {
            "name": "Inconsistent Shield Soak Analysis",
            "grade": 2,
            "section": "Shield data",
            "kind": "Encoded"
        },
        {
            "name": "Irregular Emission Data",
            "grade": 2,
            "section": "Emission data",
            "kind": "Encoded"
        },
        {
            "name": "Modified Consumer Firmware",
            "grade": 2,
            "section": "Encoded Firmware",
            "kind": "Encoded"
        },
        {
            "name": "Modified Embedded Firmware",
            "grade": 5,
            "section": "Encoded Firmware",
            "kind": "Encoded"
        },
        {
            "name": "Open Symmetric Keys",
            "grade": 3,
            "section": "Encryption files",
            "kind": "Encoded"
        },
        {
            "name": "Peculiar Shield Frequency Data",
            "grade": 5,
            "section": "Shield data",
            "kind": "Encoded"
        },
        {
            "name": "Security Firmware Patch",
            "grade": 4,
            "section": "Encoded Firmware",
            "kind": "Encoded"
        },
        {
            "name": "Specialised Legacy Firmware",
            "grade": 1,
            "section": "Encoded Firmware",
            "kind": "Encoded"
        },
        {
            "name": "Strange Wake Solutions",
            "grade": 3,
            "section": "Wake scans",
            "kind": "Encoded"
        },
        {
            "name": "Tagged Encryption Codes",
            "grade": 2,
            "section": "Encryption files",
            "kind": "Encoded"
        },
        {
            "name": "Unexpected Emission Data",
            "grade": 3,
            "section": "Emission data",
            "kind": "Encoded"
        },
        {
            "name": "Unidentified Scan Archives",
            "grade": 2,
            "section": "Data archives",
            "kind": "Encoded"
        },
        {
            "name": "Untypical Shield Scans",
            "grade": 3,
            "section": "Shield data",
            "kind": "Encoded"
        },
        {
            "name": "Unusual Encrypted Files",
            "grade": 1,
            "section": "Encryption files",
            "kind": "Encoded"
        },
        {
            "name": "Basic Conductors",
            "grade": 1,
            "section": "Conductive",
            "kind": "Manufactured"
        },
        {
            "name": "Biotech Conductors",
            "grade": 5,
            "section": "Conductive",
            "kind": "Manufactured"
        },
        {
            "name": "Chemical Distillery",
            "grade": 3,
            "section": "Chemical",
            "kind": "Manufactured"
        },
        {
            "name": "Chemical Manipulators",
            "grade": 4,
            "section": "Chemical",
            "kind": "Manufactured"
        },
        {
            "name": "Chemical Processors",
            "grade": 2,
            "section": "Chemical",
            "kind": "Manufactured"
        },
        {
            "name": "Chemical Storage Units",
            "grade": 1,
            "section": "Chemical",
            "kind": "Manufactured"
        },
        {
            "name": "Compact Composites",
            "grade": 1,
            "section": "Composite",
            "kind": "Manufactured"
        },
        {
            "name": "Compound Shielding",
            "grade": 4,
            "section": "Shielding",
            "kind": "Manufactured"
        },
        {
            "name": "Conductive Ceramics",
            "grade": 3,
            "section": "Conductive",
            "kind": "Manufactured"
        },
        {
            "name": "Conductive Components",
            "grade": 2,
            "section": "Conductive",
            "kind": "Manufactured"
        },
        {
            "name": "Conductive Polymers",
            "grade": 4,
            "section": "Conductive",
            "kind": "Manufactured"
        },
        {
            "name": "Configurable Components",
            "grade": 4,
            "section": "Mechanical components",
            "kind": "Manufactured"
        },
        {
            "name": "Core Dynamics Composites",
            "grade": 5,
            "section": "Composite",
            "kind": "Manufactured"
        },
        {
            "name": "Crystal Shards",
            "grade": 1,
            "section": "Crystals",
            "kind": "Manufactured"
        },
        {
            "name": "Electrochemical Arrays",
            "grade": 3,
            "section": "Capacitors",
            "kind": "Manufactured"
        },
        {
            "name": "Exquisite Focus Crystals",
            "grade": 5,
            "section": "Crystals",
            "kind": "Manufactured"
        },
        {
            "name": "Filament Composites",
            "grade": 2,
            "section": "Composite",
            "kind": "Manufactured"
        },
        {
            "name": "Flawed Focus Crystals",
            "grade": 2,
            "section": "Crystals",
            "kind": "Manufactured"
        },
        {
            "name": "Focus Crystals",
            "grade": 3,
            "section": "Crystals",
            "kind": "Manufactured"
        },
        {
            "name": "Galvanising Alloys",
            "grade": 2,
            "section": "Alloys",
            "kind": "Manufactured"
        },
        {
            "name": "Grid Resistors",
            "grade": 1,
            "section": "Capacitors",
            "kind": "Manufactured"
        },
        {
            "name": "Heat Conduction Wiring",
            "grade": 1,
            "section": "Heat",
            "kind": "Manufactured"
        },
        {
            "name": "Heat Dispersion Plate",
            "grade": 2,
            "section": "Heat",
            "kind": "Manufactured"
        },
        {
            "name": "Heat Exchangers",
            "grade": 3,
            "section": "Heat",
            "kind": "Manufactured"
        },
        {
            "name": "Heat Resistant Ceramics",
            "grade": 2,
            "section": "Thermic",
            "kind": "Manufactured"
        },
        {
            "name": "Heat Vanes",
            "grade": 4,
            "section": "Heat",
            "kind": "Manufactured"
        },
        {
            "name": "High Density Composites",
            "grade": 3,
            "section": "Composite",
            "kind": "Manufactured"
        },
        {
            "name": "Hybrid Capacitors",
            "grade": 2,
            "section": "Capacitors",
            "kind": "Manufactured"
        },
        {
            "name": "Imperial Shielding",
            "grade": 5,
            "section": "Shielding",
            "kind": "Manufactured"
        },
        {
            "name": "Improvised Components",
            "grade": 5,
            "section": "Mechanical components",
            "kind": "Manufactured"
        },
        {
            "name": "Mechanical Components",
            "grade": 3,
            "section": "Mechanical components",
            "kind": "Manufactured"
        },
        {
            "name": "Mechanical Equipment",
            "grade": 2,
            "section": "Mechanical components",
            "kind": "Manufactured"
        },
        {
            "name": "Mechanical Scrap",
            "grade": 1,
            "section": "Mechanical components",
            "kind": "Manufactured"
        },
        {
            "name": "Military Grade Alloys",
            "grade": 5,
            "section": "Thermic",
            "kind": "Manufactured"
        },
        {
            "name": "Military Supercapacitors",
            "grade": 5,
            "section": "Capacitors",
            "kind": "Manufactured"
        },
        {
            "name": "Pharmaceutical Isolators",
            "grade": 5,
            "section": "Chemical",
            "kind": "Manufactured"
        },
        {
            "name": "Phase Alloys",
            "grade": 3,
            "section": "Alloys",
            "kind": "Manufactured"
        },
        {
            "name": "Polymer Capacitors",
            "grade": 4,
            "section": "Capacitors",
            "kind": "Manufactured"
        },
        {
            "name": "Precipitated Alloys",
            "grade": 3,
            "section": "Thermic",
            "kind": "Manufactured"
        },
        {
            "name": "Proprietary Composites",
            "grade": 4,
            "section": "Composite",
            "kind": "Manufactured"
        },
        {
            "name": "Proto Heat Radiators",
            "grade": 5,
            "section": "Heat",
            "kind": "Manufactured"
        },
        {
            "name": "Proto Light Alloys",
            "grade": 4,
            "section": "Alloys",
            "kind": "Manufactured"
        },
        {
            "name": "Proto Radiolic Alloys",
            "grade": 5,
            "section": "Alloys",
            "kind": "Manufactured"
        },
        {
            "name": "Refined Focus Crystals",
            "grade": 4,
            "section": "Crystals",
            "kind": "Manufactured"
        },
        {
            "name": "Salvaged Alloys",
            "grade": 1,
            "section": "Alloys",
            "kind": "Manufactured"
        },
        {
            "name": "Shield Emitters",
            "grade": 2,
            "section": "Shielding",
            "kind": "Manufactured"
        },
        {
            "name": "Shielding Sensors",
            "grade": 3,
            "section": "Shielding",
            "kind": "Manufactured"
        },
        {
            "name": "Tempered Alloys",
            "grade": 1,
            "section": "Thermic",
            "kind": "Manufactured"
        },
        {
            "name": "Thermic Alloys",
            "grade": 4,
            "section": "Thermic",
            "kind": "Manufactured"
        },
        {
            "name": "Worn Shield Emitters",
            "grade": 1,
            "section": "Shielding",
            "kind": "Manufactured"
        },
        {
            "name": "Antimony",
            "grade": 4,
            "section": "Raw material 7",
            "kind": "Raw"
        },
        {
            "name": "Arsenic",
            "grade": 2,
            "section": "Raw material 6",
            "kind": "Raw"
        },
        {
            "name": "Boron",
            "grade": 3,
            "section": "Raw material 7",
            "kind": "Raw"
        },
        {
            "name": "Cadmium",
            "grade": 3,
            "section": "Raw material 3",
            "kind": "Raw"
        },
        {
            "name": "Carbon",
            "grade": 1,
            "section": "Raw material 1",
            "kind": "Raw"
        },
        {
            "name": "Chromium",
            "grade": 2,
            "section": "Raw material 2",
            "kind": "Raw"
        },
        {
            "name": "Germanium",
            "grade": 2,
            "section": "Raw material 5",
            "kind": "Raw"
        },
        {
            "name": "Iron",
            "grade": 1,
            "section": "Raw material 4",
            "kind": "Raw"
        },
        {
            "name": "Lead",
            "grade": 1,
            "section": "Raw material 7",
            "kind": "Raw"
        },
        {
            "name": "Manganese",
            "grade": 2,
            "section": "Raw material 3",
            "kind": "Raw"
        },
        {
            "name": "Mercury",
            "grade": 3,
            "section": "Raw material 6",
            "kind": "Raw"
        },
        {
            "name": "Molybdenum",
            "grade": 3,
            "section": "Raw material 2",
            "kind": "Raw"
        },
        {
            "name": "Nickel",
            "grade": 1,
            "section": "Raw material 5",
            "kind": "Raw"
        },
        {
            "name": "Niobium",
            "grade": 3,
            "section": "Raw material 1",
            "kind": "Raw"
        },
        {
            "name": "Phosphorus",
            "grade": 1,
            "section": "Raw material 2",
            "kind": "Raw"
        },
        {
            "name": "Polonium",
            "grade": 4,
            "section": "Raw material 6",
            "kind": "Raw"
        },
        {
            "name": "Rhenium",
            "grade": 1,
            "section": "Raw material 6",
            "kind": "Raw"
        },
        {
            "name": "Ruthenium",
            "grade": 4,
            "section": "Raw material 3",
            "kind": "Raw"
        },
        {
            "name": "Selenium",
            "grade": 4,
            "section": "Raw material 4",
            "kind": "Raw"
        },
        {
            "name": "Sulphur",
            "grade": 1,
            "section": "Raw material 3",
            "kind": "Raw"
        },
        {
            "name": "Technetium",
            "grade": 4,
            "section": "Raw material 2",
            "kind": "Raw"
        },
        {
            "name": "Tellurium",
            "grade": 4,
            "section": "Raw material 5",
            "kind": "Raw"
        },
        {
            "name": "Tin",
            "grade": 3,
            "section": "Raw material 4",
            "kind": "Raw"
        },
        {
            "name": "Tungsten",
            "grade": 3,
            "section": "Raw material 5",
            "kind": "Raw"
        },
        {
            "name": "Vanadium",
            "grade": 2,
            "section": "Raw material 1",
            "kind": "Raw"
        },
        {
            "name": "Yttrium",
            "grade": 4,
            "section": "Raw material 1",
            "kind": "Raw"
        },
        {
            "name": "Zinc",
            "grade": 2,
            "section": "Raw material 4",
            "kind": "Raw"
        },
        {
            "name": "Zirconium",
            "grade": 2,
            "section": "Raw material 7",
            "kind": "Raw"
        }
    ]
''';
