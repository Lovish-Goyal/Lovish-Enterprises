import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LabPlasticWare extends StatelessWidget {
  final urlImages = [
    "images/Lab_PlasticWare/lab_plasticware1.jpg",
    "images/Lab_PlasticWare/lab_plasticware2.jpg",
    "images/Lab_PlasticWare/lab_plasticware3.jpg",
    "images/Lab_PlasticWare/lab_plasticware4.jpg",
    "images/Lab_PlasticWare/lab_plasticware5.jpg",
  ];

  final urlmsgs1 = [
    "BOTTLES, LABORATORY PLASTIC WARE",
    "GENERAL LABWARE, LABORATORY PLASTIC WARE ",
    "GENERAL LABWARE, LABORATORY PLASTIC WARE ",
    "GENERAL LABWARE, LABORATORY PLASTIC WARE ",
    "BOTTLES, LABORATORY PLASTIC WARE",
  ];

  final urlmsgs2 = [
    "LPW-154 WASH BOTTLE (NEW TYPE)",
    "LPW-153 UTILITY TRAY",
    "LPW-152 URINE CONTAINER",
    "LPW-155 UNIVERSAL REAGENT RESERVOIR",
    "LPW-161 WIDE MOUTH SQUARE BOTTLE"
  ];
  LabPlasticWare({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 415,
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
