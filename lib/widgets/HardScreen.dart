import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_grid/responsive_grid.dart';

class HardScreen extends StatelessWidget {
  const HardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(children: [
      // 1st container
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          md: 6,
          lg: 6,
          xl: 4,
          child: Container(
            margin: const EdgeInsets.all(30),
            height: 125,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.call,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Text(
                        'Order Now',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Row(
                      children: [
                        const Text("PHONE:"),
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return Colors.green;
                                }
                                return Colors.blue;
                              }),
                            ),
                            child: const Text(
                              "+91 9416394050",
                            )),
                      ],
                    ),
                    Row(
                      children: [
                        const Text("EMAIL:"),
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                if (states.contains(MaterialState.hovered)) {
                                  return Colors.green;
                                }
                                return Colors.blue;
                              }),
                            ),
                            child: const Text(
                              "goyallovish1727@gmail.com",
                            )),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),

      // 2nd Container
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          md: 6,
          lg: 6,
          xl: 4,
          child: Container(
            margin: const EdgeInsets.all(30),
            height: 125,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  Icons.person,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Text(
                        'OEM / Tenders',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 267,
                      child: Text(
                          "Bulk Lab Tender Supply and OEM Manufacturers for Educational, Laboratoy, Analytical & Research Lab Products."),
                    )
                  ],
                )
              ],
            ),
          )),

      // 3rd container
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          md: 6,
          lg: 6,
          xl: 4,
          child: Container(
            margin: const EdgeInsets.all(30),
            height: 125,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  FontAwesomeIcons.handshake,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Text(
                        'Dealership',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 267,
                      child: Text(
                          "Be a part of our success story and contact to become one of our authorized dealers."),
                    )
                  ],
                )
              ],
            ),
          )),

      // 4th Container
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          md: 6,
          lg: 6,
          xl: 4,
          child: Container(
            margin: const EdgeInsets.all(30),
            height: 125,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  FontAwesomeIcons.boxArchive,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                      child: const Text(
                        'Bulk Orders',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 267,
                      child: Text(
                          "Special Discounts on bulk orders. Regular Bulk Orders to over 56 countries worldwide. Reasonably priced, good quality products, impressive packaging and prompt delivery of Consignments."),
                    )
                  ],
                )
              ],
            ),
          )),

      // 5th Container
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          md: 6,
          lg: 6,
          xl: 4,
          child: Container(
            margin: const EdgeInsets.all(30),
            height: 125,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  FontAwesomeIcons.wallet,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Text(
                        'Payment & Shipping',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 267,
                      child: Text(
                          "We accept Wire or Telegraphic Transfer/ Letter of Credit/ Paypal etc. Shipping is based on your consignment size & other factors, contact for further details."),
                    )
                  ],
                )
              ],
            ),
          )),

      // 6th Conatiner
      ResponsiveGridCol(
          xs: 12,
          sm: 12,
          md: 6,
          lg: 6,
          xl: 4,
          child: Container(
            margin: const EdgeInsets.all(30),
            height: 125,
            decoration: BoxDecoration(border: Border.all()),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Icon(
                  FontAwesomeIcons.person,
                  size: 35,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin:
                          const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      child: const Text(
                        'Support Team',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    const SizedBox(
                      width: 267,
                      child: Text(
                          "24×7 Support Team just a call away. Contact Now or fill inquiry form for all your technical/ troubleshooting inquiries."),
                    )
                  ],
                )
              ],
            ),
          )),
    ]);
  }
}
