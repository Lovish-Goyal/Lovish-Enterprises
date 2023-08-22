import 'package:flutter/material.dart';

class ProductMenu extends StatefulWidget {
  const ProductMenu({super.key});

  @override
  State<ProductMenu> createState() => _ProductMenuState();
}

class _ProductMenuState extends State<ProductMenu> {
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
      const DropdownMenuItem(value: "All Categories",child: Text("All Categories"),),
      const DropdownMenuItem(value: "DAIRY EQUIPMENTS", child: Text("DAIRY EQUIPMENTS")),
      const DropdownMenuItem(value: "PHYSICS", child: Text("PHYSICS")),
      const DropdownMenuItem(value: "BIOLOGY", child: Text("BIOLOGY")),
      const DropdownMenuItem(
          value: "LABORATORY PLASTIC WARE",
          child: Text("LABORATORY PLASTIC WARE")),
      const DropdownMenuItem(value: "LABORATORY GLASS WARE", child: Text("LABORATORY GLASS WARE")),
      const DropdownMenuItem(value: "LABORATORY EQUIPMENT", child: Text("LABORATORY EQUIPMENT")),
      const DropdownMenuItem(value: "MICROSCOPE", child: Text("MICROSCOPE")),
      const DropdownMenuItem(
          value: "BIOLOGICAL MODELS (FIBER AND PLASTIC)",
          child: Text("BIOLOGICAL MODELS (FIBER AND PLASTIC)")),
      const DropdownMenuItem(
          value: "ENGINEERING LAB INSTRUMENTS",
          child: Text("ENGINEERING LAB INSTRUMENTS")),
      const DropdownMenuItem(
          value: "HOSPITAL FURNITURE AND EQUIPMENT",
          child: Text("HOSPITAL FURNITURE AND EQUIPMENT")),
      const DropdownMenuItem(value: "SURGICAL INSTRUMENTS", child: Text("SURGICAL INSTRUMENTS")),
    ];
    return menuItems;
  }

  String selectedValue = "All Categories";

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.cyan[700],
        ),
        dropdownColor: Colors.white,
        value: selectedValue,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue!;
          });
        },
        items: dropdownItems);
  }
}
