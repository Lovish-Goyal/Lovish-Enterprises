import 'package:flutter/material.dart';
import 'package:lovish_enterprises/widgets/drawer.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../widgets/appbar.dart';
import '../../bottom.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.cyan[700],
          title: const AppbarView()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                 xl: 6,
                  lg: 6,
                  md: 12,
                  sm: 12,
                  xs: 12,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 120,vertical: 20),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.cyan),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "About Us",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan[700]),
                    ),
                  ),
                ),
              ),
              ResponsiveGridCol(
                 xl: 6,
                  lg: 6,
                  md: 12,
                  sm: 12,
                  xs: 12,
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 40,horizontal: 40),
                  child: const Text(
                        "Lovish Enterprises - Trusted Company",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                ),
                  ),
            ]),
            const SizedBox(
              height: 20,
            ),
            Divider(
              indent: 50,
              endIndent: 50,
              thickness: 3,
              color: Colors.cyan[700],
            ),
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                  xl: 7,
                  lg: 7,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 50),
                          child: const Text(
                            "Our Services",
                            style: TextStyle(
                                fontSize: 50,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.cyan),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "Are you looking for the best VIP phone numbers or VIP fancy numbers in India or its states? You have arrived here on the right webpage. That's where the VIP Number Shop comes into the picture with top-notch and best-in-market services with the very competitive and affordable price tag.VIP Number Shop (VNS) is the nation’s leading #1VIP Number Shop (VNS) is the nation’s leading #1 VIP and fancy number provider since 2007 with over 70k+ happy customers. We feel proud to say that our VIP and fancy numbers attract thousands of eyes in the market, bring conversions, and boost engagement.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              ResponsiveGridCol(
                xl: 5,
                lg: 5,
                md: 12,
                sm: 12,
                xs: 12,
                child: Container(
                  margin: const EdgeInsets.only(left: 50),
                  child: Image.network(
                    "https://www.vipnumbershop.com/static/media/girl-about.3cb0c04297c9f42a45e6.png",
                    height: 400,
                  ),
                ),
              ),
            ]),
            Container(
              margin: const EdgeInsets.all(40),
              padding: const EdgeInsets.all(40),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.cyan[700],
              ),
              child: const Column(
                children: [
                  Center(
                    child: Text(
                      "Our Vision",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Labkafe is among the most promising laboratory supplies vendors in India. We manufacture and supply lab equipment, lab furniture, lab consumables, lab glassware, lab machines and more! Not only we manufacture lab items, we export to international resellers too. We fulfill CBSE ICSE ISC IGCSE IB State board affiliation requirements for schools by providing affiliation packages to schools.Labkafe is among the most promising laboratory supplies vendors in India. We manufacture and supply lab equipment, lab furniture, lab consumables, lab glassware, lab machines and more! Not only we manufacture lab items, we export to international resellers too. We fulfill CBSE ICSE ISC IGCSE IB State board affiliation requirements for schools by providing affiliation packages to schools",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ],
              ),
            ),
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                xl: 5,
                lg: 5,
                md: 12,
                sm: 12,
                xs: 12,
                child: Image.network(
                  "https://www.vipnumbershop.com/static/media/about-boy.9a96777a1edb4c3021df.png",
                  height: 400,
                ),
              ),
              ResponsiveGridCol(
                  xl: 6,
                  lg: 6,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 40),
                          child: const Text(
                            "Our Values and Moto",
                            style: TextStyle(
                                fontSize: 40,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.cyan),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Text(
                            "Are you looking for the best VIP phone numbers or VIP fancy numbers in India or its states? You have arrived here on the right webpage. That's where the VIP Number Shop comes into the picture with top-notch and best-in-market services with the very competitive and affordable price tag.VIP Number Shop (VNS) is the nation’s leading #1VIP Number Shop (VNS) is the nation’s leading #1 VIP and fancy number provider since 2007 with over 70k+ happy customers. We feel proud to say that our VIP and fancy numbers attract thousands of eyes in the market, bring conversions, and boost engagement.",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            ]),
            const SizedBox(height: 40),
            const Bottom()
          ],
        ),
      ),
      endDrawer: MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}
