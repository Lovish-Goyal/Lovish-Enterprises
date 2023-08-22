import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LabEquipment extends StatelessWidget {
  final urlImages = [
    "images/Lab_Equipment/lab_equipment1.jpg",
    "images/Lab_Equipment/lab_equipment2.jpg",
    "images/Lab_Equipment/lab_equipment3.jpg",
    "images/Lab_Equipment/lab_equipment4.jpg",
    "images/Lab_Equipment/lab_equipment5.jpg",
  ];

  final urlmsgs1 = [
    "CENTRIFUGE, LABORATORY EQUIPMENT",
    "CENTRIFUGE, LABORATORY EQUIPMENT",
    "CENTRIFUGE, LABORATORY EQUIPMENT",
    "CENTRIFUGE, LABORATORY EQUIPMENT",
    "HOSPITAL HOLLOWARE, LABORATORY EQUIPMENT, ATERILIZERS/AUTOCLAVES, SURGICAL INSTRUMENTS"
  ];

  final urlmsgs2 = [
    "PE.601 HAND OPERATED CENTRIFUGE",
    "PE.607 DIGITAL CENTRIFUGE HEMATOCRIT",
    "PE.606 DIGITAL CENTRIFUGE BRUSHLESS",
    "PE.604 DIGITAL CENTRIFUGE",
    "HH-29 ELECTRIC INSTRUMENT STERILIZERS STAINLESS STEEL"
  ];
  LabEquipment({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 450,
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
              height: 15,
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
