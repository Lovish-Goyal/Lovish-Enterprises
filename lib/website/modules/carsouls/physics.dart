import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Physics extends StatefulWidget {
  const Physics({super.key});

  @override
  State<Physics> createState() => _PhysicsState();
}

class _PhysicsState extends State<Physics> {
  final urlImages = [
    "images/physics/physics1.jpg",
    "images/physics/physics2.jpg",
    "images/physics/physics3.jpg",
    "images/physics/physics4.jpg",
    "images/physics/physics5.jpg"
  ];

  final urlmsgs1 = [
    "HEATING MANTLES LABORATOEY EQUIPMENT",
    "Physics, Property of Matter Fluids",
    "Physics, Property of Matter Fluids",
    "Physics, Property of Matter Fluids",
    "Physics, Property of Matter Fluids"
  ];

  final urlmsgs2 = [
    "PEL.156 HEATING MANTLE",
    "PHY-FLU-041 SIPHON BAROMETER",
    "PHY-FLU-040 DENSITY SPHERE",
    "PHY-FLU-039 CAPILLARY TUBE APPARATUS",
    "PHY-FLU-038 LARGE MANOMETER GLASS ON WOODEN STAND"
  ];

  // List<String> filter = [];
  @override
  Widget build(BuildContext context) {
    return
        // TextField(
        //   onChanged: (value) {
        //     if (value.isNotEmpty) {
        //       filter = urlmsgs2
        //           .where(
        //             (element) => element.toLowerCase().contains(
        //                   value.toLowerCase(),
        //                 ),
        //           )
        //           .toList();
        //       setState(() {});
        //       debugPrint(filter.length.toString());
        //     }
        //   },
        // ),
        // ...filter.map((e) => Text(e)),
        CarouselSlider.builder(
      options: CarouselOptions(
        height: 427,
        viewportFraction: viewPort(context),
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 400),
      ),
      itemCount: urlImages.length,
      itemBuilder: (context, index, realIndex) {
        final urlImage = urlImages[index];
        final urlmsg1 = urlmsgs1[index];
        final urlmsg2 = urlmsgs2[index];
        return buildImage(urlImage, urlmsg1, urlmsg2, index);
      },
    );
  }
}

Widget buildImage(String urlImage, String urlmsg1, String urlmsg2, int index) =>
    Container(
        margin: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              urlmsg1,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              urlmsg2,
              style: const TextStyle(fontSize: 14),
            )
          ],
        ));

double viewPort(BuildContext context) {
  switch (MediaQuery.of(context).size.width) {
    case < 400:
      return 0.45;
    case >= 400 && < 800:
      return 0.4;
    case >= 800 && < 1200:
      return 0.25;
    case >= 1200:
      return 0.2;
    default:
      return 1.2;
  }
}
