import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LabGlassWare extends StatelessWidget {
  final urlImages = [
    "images/Lab_GlassWare/lab_glassware1.jpg",
    "images/Lab_GlassWare/lab_glassware2.jpg",
    "images/Lab_GlassWare/lab_glassware3.jpg",
    "images/Lab_GlassWare/lab_glassware4.jpg",
    "images/Lab_GlassWare/lab_glassware5.jpg",
    // "images/Lab_GlassWare/lab_glassware6.jpg",
    // "images/Lab_GlassWare/lab_glassware7.jpg",
    // "images/Lab_GlassWare/lab_glassware8.jpg",
    // "images/Lab_GlassWare/lab_glassware9.jpg",
  ];

  final urlmsgs1 = [
    "APPARATUS, LABORATORY GLASSWARE",
    "APPARATUS, LABORATORY GLASSWARE",
    "APPARATUS, LABORATORY GLASSWARE",
    "APPARATUS, LABORATORY GLASSWARE",
    "APPARATUS, LABORATORY GLASSWARE",
    // "APPARATUS, LABORATORY GLASSWARE",
    // "APPARATUS, LABORATORY GLASSWARE",
    // "APPARATUS, LABORATORY GLASSWARE",
    // "APPARATUS, LABORATORY GLASSWARE",
  ];

  final urlmsgs2 = [
    "LGW-553 PHOTOSYNTHESIS APPARATUS",
    "LGW-552 RETORT SHAPED VESSEL, for the culture of Plants in a space devoid of Oxygen.",
    "LGW-551 APPARATUS FOR THE DEMONSTRATION of osmotic pressure, Pfeffer’s complete soda Glass Jar",
    "LGW-550 APPARATUS FOR THE DEMONSTRATION The quality of water absorhed",
    "LGW-548 APPARATUS FOR EXPERIMENTS, on root pressure"
    // "LGW-547 DEMONSTRATION RESPIROSCOPE",
    // "LGW-22 PIPETTES TRANSFER VOLUMETRIC CLASS B",
    // "LGW-563 Water Still with Metal Heater",
    // "LGW-562 MOJJONIER FLASKS",
  ];
  LabGlassWare({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 439,
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
        //color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              urlImage,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 16,
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
