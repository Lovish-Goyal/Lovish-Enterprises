import 'package:flutter/material.dart';

import '../../../../../widgets/appbar.dart';
import '../../../../../widgets/drawer.dart';

class PhysicsView extends StatelessWidget {
  const PhysicsView({super.key});

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
                        "PHYSICS",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )),
                   MediaQuery.of(context).size.width > 860 ? 
              const Row(
                children: [
                  VerticalDivider(
                    color: Colors.black,
                  ),
                  Side(),
                ],
              ) : const Text("")
            ],
          ),
        ),
      ),
      endDrawer: MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
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
                    "PHYSICS",
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
                        child: const Text("PROPERTY OF MATTER FLUIDS"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Elasticity of Materials"))),
                const Divider(),
                InkWell(
                   onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Electrostatics"))),
                const Divider(),
                InkWell(
                  onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Heat"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("MAGNETISM & ELECTROMAGNETISM"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Mechanics"))),
                const Divider(),
                InkWell(
                   onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Meteorology Earth Science & Solar System"))),
                const Divider(),
                InkWell(
                     onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("MOTION ENERGY & POWER TRANSMISSION"))),
                const Divider(),
                InkWell(
                     onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("OPTICS"))),
                const Divider(),
                InkWell(
                     onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("PROPERTY OF MATTER SOLIDS"))),
                const Divider(),
                InkWell(
                     onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("SOUND WAVE & OSCILLATIONS"))),
              ],
            )
          ],
        ));
  }
}
