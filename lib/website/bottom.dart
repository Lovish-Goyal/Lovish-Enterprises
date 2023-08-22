import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:lovish_enterprises/widgets/buttons.dart';
import 'package:responsive_grid/responsive_grid.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  @override
  Widget build(BuildContext context) {
   // TextEditingController _searchController = TextEditingController();
    return Container(
      color: Colors.black.withOpacity(.8),
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xs: 12,
            sm: 6,
            md: 6,
            lg: 6,
            xl: 3,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Contact Info:",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Divider(
                    endIndent: 30,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                  const Row(
                    children: [
                      Text(
                          "ADDRESS:",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                                "Near Govt. School,",
                                style: TextStyle(color: Colors.white),
                              ),
                          ],
                        ),
                    ],
                  ),
                  const Center(
                    child: Text(
                          "Khudda Khurd,Ambala Cantt",
                                  style: TextStyle(color: Colors.white),
                                ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const Text(
                          "PHONE:",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      const SizedBox(
                          width: 10,
                        ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                        ),
                        child: const Text(
                          "+918607605196",
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                     const Text(
                          "EMAIL:",
                          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                        ),
                      const SizedBox(
                          width: 10,
                        ),
                      TextButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered)) {
                              return Colors.blue;
                            }
                            return Colors.white;
                          }),
                        ),
                        child: const Text(
                          "goyallovish1727@gmail.com",
                        ),
                      ),
                    ],
                  ),
                   const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 12,
            sm: 6,
            md: 6,
            lg: 6,
            xl: 3,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    "Quick Links:",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Divider(
                    endIndent: 100,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                  Textbuttonlight(
                    text: "Home",
                     onPressed: () => context.go('/'),),
                  Textbuttonlight(
                    text: "Products",
                     onPressed: () => context.go('/product')),
                  Textbuttonlight(
                    text: "About us",
                     onPressed: () => context.go('/about')),
                  Textbuttonlight(
                    text: "Enquiry",
                     onPressed: () => context.go('/enquiry'),),
                  Textbuttonlight(
                    text: "Contact us",
                     onPressed: () => context.go('/contact'),),
                       const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 12,
            sm: 6,
            md: 6,
            lg: 6,
            xl: 3,
            child: Container(
              margin: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const SizedBox(
                    height: 30,
                  ),
                   const Text(
                    "Our Policies:",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const Divider(
                    endIndent: 100,
                    thickness: 3,
                    color: Colors.grey,
                  ),
                  Textbuttonlight(
                    text: "Terms and Conditions",
                     onPressed: () {}),
                  Textbuttonlight(
                    text: "Booking Policy",
                     onPressed: () {}),
                  Textbuttonlight(
                    text: "Privacy Policy",
                     onPressed: () {}),
                       const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            xs: 12,
            sm: 6,
            md: 6,
            lg: 6,
            xl: 3,
            child: Container(
              margin: const EdgeInsets.only(top: 20, right: 30),
              child: Center(
                child: Column(
                  
                  children: [
                      const SizedBox(
                    height: 30,
                  ),
                    const Text(
                      "LOVISH ENTERPRISES",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "LOVISH ENTERPRISES - AN ISO Company",
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "Follow us:",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30),
                    ),
                     const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                           icon: const Icon(PhosphorIcons.whatsapp_logo,
                           color: Colors.white,)),
                      IconButton(
                          onPressed: () {},
                           icon: const Icon(PhosphorIcons.instagram_logo,
                           color: Colors.white,)),
                      IconButton(
                          onPressed: () {},
                           icon: const Icon(PhosphorIcons.facebook_logo,
                           color: Colors.white,)),
                      IconButton(
                          onPressed: () {},
                           icon: const Icon(PhosphorIcons.twitter_logo,
                           color: Colors.white,))
                      ],
                    ),
                      const SizedBox(
                    height: 30,
                  ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}