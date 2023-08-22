import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BioModel extends StatelessWidget {
  final urlImages = [
    "images/Bio_Models/bio_model1.jpg",
    "images/Bio_Models/bio_model2.jpg",
    "images/Bio_Models/bio_model3.jpg",
    "images/Bio_Models/bio_model4.jpg",
    "images/image1.jpg",
  ];

  final urlmsgs1 = [
    "ANATOMICAL MODELS, BIOLOGICAL MODELS (FIBER AND PLASTIC), EYE AND EAR",
    "ANATOMICAL MODELS, BIOLOGICAL MODELS (FIBER AND PLASTIC), EYE AND EAR",
    "ANATOMICAL MODELS, BIOLOGICAL MODELS (FIBER AND PLASTIC), EYE AND EAR",
    "ANATOMICAL MODELS, BIOLOGICAL MODELS (FIBER AND PLASTIC), EYE AND EAR",
    "ANATOMICAL MODELS, BIOLOGICAL MODELS (FIBER AND PLASTIC), EYE AND EAR",
  ];

  final urlmsgs2 = [
    "HAM-12 HUMAN EAR MODEL 5 TIMES ENLARGED WITH DETAILED KEY CARD",
    "HAM-11 HUMAN EYE WITH MUSCLES IN BONY ORBIT MODEL 3 TIMES ENLARGED-9 PARTS WITH DETAILED KEY CARD",
    "HAM-10 HUMAN EYE MODEL 5 TIMES ENLARGED-7 PARTS WITH DETAILED KEY CARD",
    "HAM-08 HUMAN EYE MODEL 3 TIMES ENLARGED-7 PARTS WITH DETAILED KEY CARD",
    "PHY-FLU-038 LARGE MANOMETER GLASS ON WOODEN STAND"
  ];
  BioModel({super.key});

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
              height: 13,
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
