import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../widgets/appbar.dart';
import '../../../../../widgets/drawer.dart';

class SurgicalInstrumentsView extends StatelessWidget {
  const SurgicalInstrumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.cyan[700],
          title: const AppbarView()),
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.all(20),
                  child: const Column(
                    children: [
                      Text(
                        "SURGICAL INSTRUMENTS",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )),
              MediaQuery.of(context).size.width > 860
                  ? const Row(
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                        ),
                        Side(),
                      ],
                    )
                  : Text("")
            ],
          ),
        ),
      ),
      endDrawer:
          MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}

class Side extends StatelessWidget {
  const Side({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 300,
        margin: const EdgeInsets.all(50),
        child: Column(
          children: [
            Container(
              height: 50,
              color: Colors.cyan[700],
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.list_alt),
                  Text(
                    "SURGICAL INSTRUMENTS",
                    style: TextStyle(fontSize: 18),
                  )
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 5,
                ),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Anesthetic Instruments"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Dental Instrumnets"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text(
                            "ENT (Ear, Nose & Throat Instruments)"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child:
                            const Text("Gall Bladder Instruments & Trocars"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child:
                            const Text("Dressing, Tissue & Sinus Forcepts"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Hamostatic Forceps"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Splinter Forceps"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Sterilizer Forceps"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Towel and Sponge Holding Forceps"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Hospital HolloWare"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Needle Holder"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Ophthalmic"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Plastic Surgery Instruments"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Post Mortem Instruments"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Probe and Directors"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Refractor"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text(
                            "Saws and Plaster of Paris Instruments"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Scissors"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child:
                            const Text("STOMACH AND INTESTINAL INSTRUMENTS"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Surgical Instruments Kits"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Suture Instruments"))),
              ],
            )
          ],
        ));
  }
}
