import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SurgicalInstruments extends StatelessWidget {
  final urlImages = [
    "images/Surgical_instruments/surgical_instrument1.jpg",
    "images/Surgical_instruments/surgical_instrument2.jpg",
    "images/Surgical_instruments/surgical_instrument3.jpg",
    "images/Surgical_instruments/surgical_instrument4.jpg",
    "images/Surgical_instruments/surgical_instrument5.jpg"
  ];

  final urlmsgs1 = [
    "DENTAL INSTRUMENTS, SURGICAL INSTRUMENTS",
    "DENTAL INSTRUMENTS, SURGICAL INSTRUMENTS",
    "DENTAL INSTRUMENTS, SURGICAL INSTRUMENTS",
    "DENTAL INSTRUMENTS, SURGICAL INSTRUMENTS",
    "DENTAL INSTRUMENTS, SURGICAL INSTRUMENTS",
  ];

  final urlmsgs2 = [
    "HSI-1271 EXTRACTING FORCEPS",
    "HSI-1275 EXTRACTING FORCEPS",
    "HSI-1274 HAWKS BILL EXTRACTING",
    "HSI-1273 HARRIS EXTRACTING FORCEPS",
    "HSI-1272 HULL’S UNIVERSAL FORCEPS"
  ];
  SurgicalInstruments({super.key});

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
