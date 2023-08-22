import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class DairyEquipment extends StatelessWidget {
  final urlImages = [
    "images/Dairy_Equipments/Equipment1.jpg",
    "images/Dairy_Equipments/Equipment2.jpg",
    "images/Dairy_Equipments/Equipment3.jpg",
    "images/Dairy_Equipments/Equipment4.jpg",
    "images/Dairy_Equipments/Equipment5.jpg",
  ];

  final productTypemsg1 = [
    "DAIRY EQUIPMENTS",
    "DAIRY EQUIPMENTS",
    "DAIRY EQUIPMENTS",
    "DAIRY EQUIPMENTS",
    "DAIRY EQUIPMENTS",
  ];

  final productTypemsg2 = [
    "ELECTRONIC MILK FAT ANALYZER",
    "ELECTRONIC MILK FAT ANALYZER",
    "ELECTRONIC MILK FAT ANALYZER",
    "ELECTRONIC MILK FAT ANALYZER",
    "ELECTRONIC MILK FAT ANALYZER",
  ];

  final urlmsgs2 = [
    "EKOMILK TOTAL ULTRASONIC MILK ANALYZER",
    "EKOMILK M ULTRASONIC MILK ANALYZER",
    "EKOMILK BOND ULTRASONIC MILK ANALYZER",
    "EKOMILK ULTRA PRO ULTRASONIC MILK ANALYZER",
    "EKOMILK ULTRA ULTRASONIC MILK ANALYZER"
  ];
  DairyEquipment({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 438,
        viewportFraction: viewPort(context),
        autoPlay: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 400),
      ),
      itemCount: urlImages.length,
      itemBuilder: (context, index, realIndex) {
        final urlImage = urlImages[index];
        final productType1 = productTypemsg1[index];
        final productType2 = productTypemsg2[index];
        final urlmsg2 = urlmsgs2[index];
        return buildImage(urlImage, productType1, productType2, urlmsg2, index);
      },
    );
  }
}

Widget buildImage(String urlImage, String productType1, String productType2,
        String urlmsg2, int index) =>
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
              height: 17,
            ),
            Text(
              productType1,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Text(
              productType2,
              style: const TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                urlmsg2,
                style: const TextStyle(fontSize: 14),
              ),
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
