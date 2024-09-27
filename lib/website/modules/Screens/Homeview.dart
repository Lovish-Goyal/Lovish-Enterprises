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
import '../../../utils/drawrerContainer.dart';
import '../../../widgets/carsoul.dart';
import '../carsouls/bio_model.dart';
import '../../../widgets/HardScreen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // Whatsapp Messages Logic
  int count = 1;

  _launchWhatsapp() async {
    var url = Uri.parse(
        "https://wa.me/8607605196?text=Hey buddy, try this super cool new app!");
    var whatsapp = "+918607605196";
    var whatsappAndroid =
        Uri.parse("whatsapp://send?phone=$whatsapp&text=hello");
    if (await canLaunchUrl(whatsappAndroid)) {
      await launchUrl(whatsappAndroid);
    } else if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
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
        title: AppbarView(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // if (MediaQuery.of(context).size.width < 1000)
            //   Container(
            //     margin: const EdgeInsets.symmetric(horizontal: 20),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Container(
            //             margin: const EdgeInsets.all(10),
            //             width: 380,
            //             child: const ProductMenu()),
            //         MediaQuery.of(context).size.width > 700
            //             ? InkWell(
            //                 borderRadius: BorderRadius.circular(30),
            //                 onTap: () => context.go('/search'),
            //                 child: Container(
            //                   padding: const EdgeInsets.all(10),
            //                   width: 240,
            //                   decoration: BoxDecoration(
            //                     border: Border.all(),
            //                     borderRadius: BorderRadius.circular(30),
            //                   ),
            //                   child: const Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       Text("Search..."),
            //                       Icon(Icons.search),
            //                     ],
            //                   ),
            //                 ),
            //               )
            //             : Container(
            //                 decoration: BoxDecoration(
            //                     border: Border.all(),
            //                     borderRadius: BorderRadius.circular(100)),
            //                 child: IconButton(
            //                     onPressed: () => context.push('/search'),
            //                     icon: const Icon(Icons.search)))
            //       ],
            //     ),
            //   ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  if (MediaQuery.of(context).size.width > 1000)
                    Container(
                      width: 300,
                      margin: const EdgeInsets.only(left: 20, top: 20),
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: Colors.grey, width: 1.0),
                        left: BorderSide(color: Colors.grey, width: 1.0),
                        right: BorderSide(color: Colors.grey, width: 1.0),
                      )),
                      child: Column(
                        children: [
                          Container(
                            height: 50,
                            color: Colors.cyan[700],
                            child: const Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.list_alt,
                                    color: Colors.white,
                                  ),
                                  Text(
                                    "All Categories",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ...[
                                {
                                  "route": "/dailyequipment",
                                  "text": "DAIRY EQUIPMENTS"
                                },
                                {"route": "/physics", "text": "PHYSICS"},
                                {"route": "/biology", "text": "BIOLOGY"},
                                {
                                  "route": "/plasticware",
                                  "text": "LABORATORY PLASTIC WARE"
                                },
                                {
                                  "route": "/glassware",
                                  "text": "LABORATORY GLASS WARE"
                                },
                                {
                                  "route": "/labequipment",
                                  "text": "LABORATORY EQUIPMENT"
                                },
                                {"route": "/microscope", "text": "MICROSCOPE"},
                                {
                                  "route": "/biomodels",
                                  "text": "BIOLOGICAL MODELS"
                                },
                                {
                                  "route": "/engglab",
                                  "text": "ENGINEERING LAB INSTRUMENTS"
                                },
                                {
                                  "route": "/hospitalinstruments",
                                  "text": "HOSPITAL FURNITURE AND EQUIPMENT"
                                },
                                {
                                  "route": "/surgicalinstruments",
                                  "text": "SURGICAL INSTRUMENTS"
                                },
                              ].map((item) {
                                return Column(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          border: BorderDirectional(
                                              bottom: BorderSide(
                                                  color: Colors.grey))),
                                      child: DrawerContainer(
                                        ontap: () => context
                                            .go(item["route"].toString()),
                                        text: item["text"].toString(),
                                      ),
                                    ),
                                  ],
                                );
                              }).toList(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width > 1000
                        ? MediaQuery.of(context).size.width / 1.5
                        : MediaQuery.of(context).size.width / 1.1,
                    child: const Carsoul(),
                  ),
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
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Dairy Equipments",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  DairyEquipment(),

                  const SizedBox(height: 20),

                  // Row items for 3rd type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Biology",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  Biology(),

                  const SizedBox(height: 20),

                  // Row items for 4th type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Laboratory Plastic Ware",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  LabPlasticWare(),

                  const SizedBox(height: 20),

                  // Row items for 5th type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Laboratory Glassware",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  LabGlassWare(),

                  const SizedBox(height: 20),

                  // Row items for 6th type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Laboratory Equipment",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  LabEquipment(),

                  const SizedBox(height: 20),

                  // Row items for 7th type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Microscope",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
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
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Engineering Lab instruments",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  EngineeringLabInstruments(),

                  const SizedBox(height: 20),

                  // Row items for 9th type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Hospital Furniture & Equipments ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                  const Divider(endIndent: 60),

                  const SizedBox(height: 10),

                  HospitalFurnitureEquipments(),

                  const SizedBox(height: 20),

                  // Row items for 10th type of equipments
                  const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Surgical Instruments ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
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
            borderRadius: BorderRadius.all(Radius.circular(15))),
        backgroundColor: const Color.fromARGB(255, 109, 212, 114),
        onPressed: _launchWhatsapp,
        child: const FaIcon(FontAwesomeIcons.whatsapp),
      ),
      endDrawer:
          MediaQuery.of(context).size.width > 450 ? null : const EndDrawer(),
    );
  }
}
