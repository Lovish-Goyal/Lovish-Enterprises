import 'package:flutter/material.dart';
import 'package:lovish_enterprises/website/bottom.dart';
import 'package:lovish_enterprises/widgets/drawer.dart';
import 'package:lovish_enterprises/widgets/dropdown.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../../widgets/appbar.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: const Color.fromRGBO(0, 151, 167, 1),
        title: const AppbarView(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(30),
              child: ResponsiveGridRow(children: [
                ResponsiveGridCol(
                  xl: 8,
                  lg: 6,
                  md: 5,
                  sm: 3,
                  xs: 12,
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          child: Text("Product",style: TextStyle(
                            fontSize: 30,
                            color: Colors.cyan[700],
                            fontWeight: FontWeight.bold
                          ),),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Divider(
                          thickness: 3,
                          color: Colors.cyan[700],
                          indent: 100,
                          endIndent: 100,
                        )
                      ],
                    ),
                  )),
                ResponsiveGridCol(
                  xl: 4,
                  lg: 6,
                  md: 7,
                  sm: 9,
                  xs: 12,
                  child: const ProductMenu()),
              ]),
            ),
            const Bottom(),
          ],
        ),
      ),
      endDrawer: MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}