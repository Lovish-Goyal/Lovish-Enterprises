import 'package:flutter/material.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class PlutomenuBar extends StatefulWidget {
  const PlutomenuBar({
    super.key,
  });

  @override
  State<PlutomenuBar> createState() => _PlutomenuBarState();
}

class _PlutomenuBarState extends State<PlutomenuBar> {
  late final List<PlutoMenuItem> whiteHoverMenus;

  @override
  void initState() {
    super.initState();
    whiteHoverMenus = _makeMenus(context);
  }

  void message(context, String text) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();

    final snackBar = SnackBar(content: Text(text),);

    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  List<PlutoMenuItem> _makeMenus(BuildContext context) {
    return [
        PlutoMenuItem(
          title: "All Categories",
          children: [
            // DAIRY EQUIPMENTS
          PlutoMenuItem(
            title: 'DAIRY EQUIPMENTS',
            onTap: () {},
            children: [
              PlutoMenuItem(
                    title: 'MILK COLLECTION ACCESSORIES',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'MILK PRODUCT PROCESSING EQUIPMENT',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'ELECTRONIC MILK FAT ANALYZER',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'GERBER MILK FAT TESTING EQUIPMENT',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'BULK MILK COOLER',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'AUTOMATIC MILK COLLECTION UNIT',
                    onTap: () {},
                  ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // SCIENTIFIC LAB EQUIPMENTS
          PlutoMenuItem(
            title: 'SCIENTIFIC LAB EQUIPMENTS',
            onTap: () {},
            children: [
              // PHYSICS
              PlutoMenuItem(
                title: 'PHYSICS',
                onTap: () {},
                children: [
                  PlutoMenuItem(
                    title: 'PROPERTY OF MATTER FLUIDS',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Elasticity of Materials',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Electrostatics',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Heat',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'MAGNETISM & ELECTROMAGNETISM',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Mechanics',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Meteorology Earth Science & Solar System',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'MOTION ENERGY & POWER TRANSMISSION',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'OPTICS',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'PROPERTY OF MATTER SOLIDS',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'SOUND WAVE & OSCILLATIONS',
                    onTap: () {},
                  ),
                ],
              ),
              // BIOLOGY
              PlutoMenuItem(
                title: 'BIOLOGY',
                onTap: () {},
                children: [
                  PlutoMenuItem(
                    title: 'Garden Tools ',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Micro Slides & Accessories',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Prepared Micro Slide',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // LABORATORY PLASTIC WARE
          PlutoMenuItem(
            title: 'LABORATORY PLASTIC WARE',
            onTap: () {},
            children: [
               PlutoMenuItem(
                    title: 'Animal Cages ',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Bottles',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Centrifuge Ware',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Cryo Ware',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Funnels',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'General LabWare',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Molecular Sets',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Volumetric ware',
                onTap: () {},
              ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // LABORATORY GLASS WARE
          PlutoMenuItem(
            title: 'LABORATORY GLASS WARE',
            onTap: () {},
            children: [
              PlutoMenuItem(
                    title: 'Adapter',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'APPARATUS',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Beaker',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Bottles',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Burette',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'CANNULE',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Condensers',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Cylinders',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Funnels',
                    onTap: () {},
                  ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // LABORATORY EQUIPMENT
          PlutoMenuItem(
            title: 'LABORATORY EQUIPMENT',
            onTap: () {},
            children: [
              PlutoMenuItem(
                    title: 'Centrifuge ',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Clean Air Equipment',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Distillations/Still',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Driers',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Freezers and Refrigerator',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Furnaces',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Heating Mantles',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Hot Plates and Megnetic Stirrer',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Humidity Chambers',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Incubators',
                onTap: () {},
              ),
              PlutoMenuItem(
                title: 'Ovens',
                onTap: () {},
              ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // MICROSCOPE
          PlutoMenuItem(
            title: 'MICROSCOPE',
            onTap: () {},
            children: [
              PlutoMenuItem(
                title: 'MicroScope',
                onTap: () {},
                  ),
              // PlutoMenuItem(
              //   title: 'Digital MicroScope Camera',
              //   onTap: () {},
              //     ),
              PlutoMenuItem(
                title: 'Digital MicroScope',
                onTap: () {},
              ),
              // PlutoMenuItem(
              //   title: 'SoftWare',
              //   onTap: () {},
              // ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // BIOLOGICAL MODELS (FIBER AND PLASTIC)
          PlutoMenuItem(
            title: 'BIOLOGICAL MODELS (FIBER AND PLASTIC)',
            onTap: () {},
            children: [
              PlutoMenuItem(
                title: 'Anatomical Models',
                onTap: () {},
                children: [
                  PlutoMenuItem(
                    title: 'Eye And Ear',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Human Torso',
                    onTap: () {},
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Zoological Models',
                onTap: () {},
                children: [
                  PlutoMenuItem(
                    title: 'Dissection Models',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
            // ENGINEERING LAB INSTRUMENTS
          PlutoMenuItem(
            title: 'ENGINEERING LAB INSTRUMENTS',
            onTap: () {},
            children: [
              PlutoMenuItem(
                title: 'Electronics',
                onTap: () {},
                children: [
                  PlutoMenuItem(
                    title: 'Amplifier And Oscillators',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Analog Electronics',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Basic Electronics',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'BreadBoard Trainers',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Communication Trainer',
                    onTap: () {},
                    children: [
                      PlutoMenuItem(
                    title: 'Communication Lab',
                    onTap: () {},
                  ),
                    ]
                  ),
                  PlutoMenuItem(
                    title: 'Consumer Electronics',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Control Lab',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Digital Electronics',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Fiber Optics Trainer Kits',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Instrumentation Lab',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Microprocessor & Microcontroller',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'MicroWave Lab',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Operational Amplifier Trainer',
                    onTap: () {},
                  ),
                ],
              ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
           // HOSPITAL FURNITURE AND EQUIPMENT
          PlutoMenuItem(
            title: 'HOSPITAL FURNITURE AND EQUIPMENT',
            onTap: () {},
            children: [
              PlutoMenuItem(
                    title: 'Examination / Delivery Tables',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Hospital Bed',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Ot Tables',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Trolley/Cart',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Ward Furniture',
                    onTap: () {},
                  ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),
           // SURGICAL INSTRUMENTS
          PlutoMenuItem(
            title: 'SURGICAL INSTRUMENTS',
            onTap: () {},
            children: [
              PlutoMenuItem(
                    title: 'Anesthetic Instruments',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Dental Instrumnets',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'ENT (Ear, Nose & Throat Instruments)',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Gall Bladder Instruments & Trocars',
                    onTap: () {},
                  ),
              PlutoMenuItem(
                title: 'Forceps',
                onTap: () {},
                children: [
                  PlutoMenuItem(
                    title: 'Dressing, Tissue & Sinus Forcepts',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Hamostatic Forceps',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Splinter Forceps',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Sterilizer Forceps',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Towel and Sponge Holding Forceps',
                    onTap: () {},
                  ),
                ],
              ),
              PlutoMenuItem(
                title: 'Gynecological And Obstetrical Instruments',
                onTap: () {},
              ),
              PlutoMenuItem(
                    title: 'Hospital HolloWare',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Needle Holder',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Ophthalmic',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Plastic Surgery Instruments',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Post Mortem Instruments',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Probe and Directors',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Refractor',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Saws and Plaster of Paris Instruments',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Scissors',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'STOMACH AND INTESTINAL INSTRUMENTS',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Surgical Instruments Kits',
                    onTap: () {},
                  ),
                  PlutoMenuItem(
                    title: 'Suture Instruments',
                    onTap: () {},
                  ),
            ],
          ),
          PlutoMenuItem.divider(height: 10),          
          ])
    ];
  }


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          PlutoMenuBar(
            mode: PlutoMenuBarMode.hover,
            menus: whiteHoverMenus,
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}