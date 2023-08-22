import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MicroScope extends StatelessWidget {
  final urlImages = [
    "images/Microscope/microscope1.jpg",
    "images/Microscope/microscope2.jpg",
    "images/Microscope/microscope3.jpg",
    "images/Microscope/microscope4.jpg",
    "images/Microscope/microscope5.jpg"
  ];

  final urlmsgs1 = [
    "DIGITAL MICROSCOPE, MICROSCOPE",
    "DIGITAL MICROSCOPE, MICROSCOPE",
    "MICROSCOPE, MICROSCOPE",
    "MICROSCOPE, MICROSCOPE",
    "MICROSCOPE, MICROSCOPE"
  ];

  final urlmsgs2 = [
    "MIC-126 3 MEGAPIXEL CAMERA (DRIVERLESS)",
    "MIC-125 2 MEGAPIXEL CAMERA (DRIVERLESS)",
    "MIC-107 RESEARCH MEDICAL MICROSCOPE",
    "MIC-119 TRINOCULAR ADVANCED INVERTED METALLURGICAL MICROSCOPE",
    "MIC-118 POLARIZING MICROSCOPE"
  ];
  MicroScope({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 420,
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
