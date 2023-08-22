import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HospitalFurnitureEquipments extends StatelessWidget {
  final urlImages = [
    "images/hospital_Furniture_Equipment/hospital_furniture_equipment1.jpg",
    "images/hospital_Furniture_Equipment/hospital_furniture_equipment2.jpg",
    "images/hospital_Furniture_Equipment/hospital_furniture_equipment3.jpg",
    "images/hospital_Furniture_Equipment/hospital_furniture_equipment4.jpg",
    "images/hospital_Furniture_Equipment/hospital_furniture_equipment5.jpg",
    // "images/hospital_Furniture_Equipment/hospital_furniture_equipment6.jpg",
    // "images/hospital_Furniture_Equipment/hospital_furniture_equipment7.jpg",
    // "images/hospital_Furniture_Equipment/hospital_furniture_equipment8.jpg",
  ];

  final urlmsgs1 = [
    "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    // "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    // "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
    // "HOSPITAL FURNITURE & EQUIPMENT, OT TABLES",
  ];

  final urlmsgs2 = [
    "HF-227 BED SIDE SCREEN 3 PANEL",
    "HF-163 ELECTRIC C ARM OT TABLE",
    "HF-231 BIO-MEDICAL WASTE 3 BIN TROLLEY",
    "HF-230 LINEN TROLLEY",
    "HF-165 HYDRAULIC SURGICAL OT TABLE",
    // "HF-166 ORTHOPEDIC OT TABLE",
    // "HF-228 BED SIDE SCREEN 4 PANEL",
    // "HF-226 HYDRAULIC REVOLVING STOOL",
  ];
  HospitalFurnitureEquipments({super.key});

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
