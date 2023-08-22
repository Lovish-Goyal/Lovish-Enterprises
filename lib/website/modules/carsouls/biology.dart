import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Biology extends StatelessWidget {
  final urlImages = [
    "images/Biology/Biology1.jpg",
    "images/Biology/Biology2.jpg",
    "images/image1.jpg",
    "images/Biology/Biology4.jpg",
    "images/Biology/Biology5.jpg",
  ];

  final urlmsgs1 = [
    "BIOLOGY, GARDEN TOOLS",
    "BIOLOGY, GARDEN TOOLS",
    "BIOLOGY, GARDEN TOOLS",
    "BIOLOGY, GARDEN TOOLS",
    "BIOLOGY, GARDEN TOOLS",
  ];

  final urlmsgs2 = [
    "GT21 GARDEN WEEDING FORK",
    "GT-02B STEEL GARDEN HOE WITHOUT HANDLE (BLACK)",
    "PHY-FLU-039 CAPILLARY TUBE APPARATUS",
    "GT22 GARDEN HAND CULTIVATOR",
    "GT19 WEEDING TROWEL WITH WOODEN HANDLE "
  ];
  Biology({super.key});

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
