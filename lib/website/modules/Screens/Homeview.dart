import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:lovish_enterprises/website/bottom.dart';
import 'package:lovish_enterprises/website/modules/carsouls/biology.dart';
import 'package:lovish_enterprises/website/modules/carsouls/dairyequipments.dart';
import 'package:lovish_enterprises/website/modules/carsouls/eng_lab_instrument.dart';
import 'package:lovish_enterprises/website/modules/carsouls/hospital_furniture_equipments.dart';
import 'package:lovish_enterprises/website/modules/carsouls/lab_equipment.dart';
import 'package:lovish_enterprises/website/modules/carsouls/lab_glassware.dart';
import 'package:lovish_enterprises/website/modules/carsouls/lab_plastic_ware.dart';
import 'package:lovish_enterprises/website/modules/carsouls/microscope.dart';
import 'package:lovish_enterprises/website/modules/carsouls/physics.dart';
import 'package:lovish_enterprises/website/modules/carsouls/surgical_instruments.dart';
import 'package:lovish_enterprises/widgets/appbar.dart';
import 'package:lovish_enterprises/widgets/drawer.dart';
import 'package:lovish_enterprises/widgets/dropdown.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../widgets/carsoul.dart';
import '../carsouls/bio_model.dart';
import '../../../widgets/HardScreen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

 
_launchWhatsapp() async {
  var url = Uri.parse("https://wa.me/8607605196?text=Hey buddy, try this super cool new app!");
    var whatsapp = "+918607605196";
    var whatsappAndroid =Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
        await launchUrl(whatsappAndroid);
    } 
    else if (await canLaunchUrl(url)) {
        await launchUrl(url);
    } 
    else {
        ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("WhatsApp is not installed on the device"),
        ),
      );
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.cyan[700],
        title: const AppbarView(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (MediaQuery.of(context).size.width < 1000)
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        margin: const EdgeInsets.all(10),
                        width: 380,
                        child: const ProductMenu()),
                    MediaQuery.of(context).size.width > 700
                        ? InkWell(
                            borderRadius: BorderRadius.circular(30),
                            onTap: () => context.go('/search'),
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              width: 240,
                              decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Search..."),
                                  Icon(Icons.search),
                                ],
                              ),
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(100)),
                            child: IconButton(
                                onPressed: () => context.push('/search'),
                                icon: const Icon(Icons.search)))
                  ],
                ),
              ),
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (MediaQuery.of(context).size.width > 1000)
                    Container(
                        width: 300,
                        margin: const EdgeInsets.only(left: 20, top: 20),
                        decoration: BoxDecoration(border: Border.all()),
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              color: Colors.cyan[700],
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.list_alt),
                                  Text("All Categories")
                                ],
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () => context.go('/dailyequipment'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child: Text("DAIRY EQUIPMENTS")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/physics'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(child: Text("PHYSICS")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/biology'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(child: Text("BIOLOGY")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/plasticware'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child: Text(
                                                "LABORATORY PLASTIC WARE")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/glassware'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child: Text(
                                                "LABORATORY GLASS WARE")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/labequipment'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child:
                                                Text("LABORATORY EQUIPMENT")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/microscope'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child:
                                            const Center(child: Text("MICROSCOPE")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/biomodels'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child: Text(
                                                "BIOLOGICAL MODELS (FIBER AND PLASTIC)")))),
                                const Divider(),
                                InkWell(
                                    onTap: () => context.go('/engglab'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child: Text(
                                                "ENGINEERING LAB INSTRUMENTS")))),
                                const Divider(),
                                InkWell(
                                    onTap: () =>
                                        context.go('/hospitalinstruments'),
                                    child: Container(
                                        width: 300,
                                        margin:
                                            const EdgeInsets.only(top: 10, bottom: 5),
                                        child: const Center(
                                            child: Text(
                                                "HOSPITAL FURNITURE AND EQUIPMENT")))),
                                const Divider(),
                                InkWell(
                                    onTap: () =>
                                        context.go('/surgicalinstruments'),
                                    child: Container(
                                        width: 300,
                                        margin: const EdgeInsets.only(
                                            top: 10, bottom: 10),
                                        child: const Center(
                                            child:
                                                Text("SURGICAL INSTRUMENTS")))),
                              ],
                            )
                          ],
                        )),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: (MediaQuery.of(context).size.width > 1000)
                        ? MediaQuery.of(context).size.width / 1.5
                        : MediaQuery.of(context).size.width / 1.1,
                    child: const Carsoul(),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const HardScreen(),
                  const SizedBox(
                    height: 10,
                  ),
                  // Row items for 1st type of equipments
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Physics",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),

                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  const Physics(),

                  const SizedBox(height: 20),

                  // Row items for 2nd type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Dairy Equipments",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  DairyEquipment(),

                  const SizedBox(height: 20),

                  // Row items for 3rd type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Biology",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  Biology(),

                  const SizedBox(height: 20),

                  // Row items for 4th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Laboratory Plastic Ware",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  LabPlasticWare(),

                  const SizedBox(height: 20),

                  // Row items for 5th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Laboratory Glassware",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  LabGlassWare(),

                  const SizedBox(height: 20),

                  // Row items for 6th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Laboratory Equipment",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  LabEquipment(),

                  const SizedBox(height: 20),

                  // Row items for 7th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Microscope",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  MicroScope(),

                  const SizedBox(height: 20),

                  // Row items for 7th type of equipments
                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    MediaQuery.of(context).size.width > 600
                        ? const Text(
                            "Biological Models (Fiber And Plastics)",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )
                        : const Text(
                            "Biological Models",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  BioModel(),

                  const SizedBox(height: 20),

                  // Row items for 8th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Engineering Lab instruments",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  EngineeringLabInstruments(),

                  const SizedBox(height: 20),

                  // Row items for 9th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Hospital Furniture & Equipments ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  HospitalFurnitureEquipments(),

                  const SizedBox(height: 20),

                  // Row items for 10th type of equipments
                  const Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                    Text(
                      "Surgical Instruments ",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w900),
                    ),
                  ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  SurgicalInstruments(),

                  const SizedBox(height: 20),
                ],
              ),
            ),
            // Bottom of the website
            const Bottom(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5))
     ),
        backgroundColor: Colors.green.shade600,
        onPressed: _launchWhatsapp,
        child: const FaIcon(FontAwesomeIcons.whatsapp),),
      endDrawer: MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}
