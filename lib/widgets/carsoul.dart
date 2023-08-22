import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carsoul extends StatelessWidget {
  const Carsoul({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage("images/image1.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),

        //2nd Image of Slider
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage("images/image2.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),

        //3rd Image of Slider
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage("images/image3.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),

        //4th Image of Slider
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage("images/image4.jpg"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],

      //Slider Container properties
      options: CarouselOptions(
        height: 500,
        enlargeCenterPage: true,
        autoPlay: true,
        // aspectRatio: 16 / 9,
        autoPlayCurve: Curves.fastOutSlowIn,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: viewPort(context),
      ),
    );
  }
}

double viewPort(BuildContext context) {
  switch (MediaQuery.of(context).size.width) {
    case < 600:
      return 1;
    case >= 600 && < 1000:
      return 1;
    case >= 1000:
      return 1;
    default:
      return 1.2;
  }
}
