import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../widgets/appbar.dart';
import '../../../../../widgets/drawer.dart';

class DailyEquipmentView extends StatelessWidget {
  const DailyEquipmentView({super.key});

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
                        "DAILY EQUIPMENT",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  )),
              const Row(
                children: [
                  VerticalDivider(
                    color: Colors.black,
                  ),
                  Side(),
                ],
              ),
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
                    "DAILY EQUIPMENT",
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
                    onTap: () => context.go('/dailyequipment'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("DAIRY EQUIPMENTS"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/physics'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("PHYSICS"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
                const Divider(),
                InkWell(
                    onTap: () => context.go('/biology'),
                    child: Container(
                        width: 300,
                        padding: const EdgeInsets.only(left: 20),
                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                        child: const Text("BIOLOGY"))),
              ],
            )
          ],
        ));
  }
}
