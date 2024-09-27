import 'package:flutter/material.dart';

import '../../../../../widgets/appbar.dart';
import '../../../../../widgets/drawer.dart';

class LabEquipmentView extends StatelessWidget {
  const LabEquipmentView({super.key});

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
                        "LABORATORY EQUIPMENT",
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
              ): const Text("")
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
                    "LABORATORY EQUIPMENT",
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
                        child: const Text("Centrifuge"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Clean Air Equipment"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Distillations/Still'"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Driers"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Freezers and Refrigerator"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Furnaces"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Heating Mantles"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Hot Plates and Megnetic Stirrer"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Humidity Chambers"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Incubators"))),
                const Divider(),
                InkWell(
                    onTap: () {},
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("Ovens"))),
              ],
            )
          ],
        ));
  }
}
