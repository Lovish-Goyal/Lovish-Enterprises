import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lovish_enterprises/widgets/dropdown.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../widgets/drawer.dart';

class Search extends ConsumerStatefulWidget {
  const Search({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SearchState();
}

class _SearchState extends ConsumerState<Search> {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.cyan[700],
        title: const Text(
          "Search Products",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 40,
          ),
          onPressed: () => context.go('/'),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                xl: 8,
                lg: 7,
                md: 6,
                sm: 4,
                xs: 12,
                child: Container(
                    margin: const EdgeInsets.all(10),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: searchviewPort(context),
                          // width: SearchviewPort(context),
                          child: TextField(
                            controller: searchController,
                            decoration: const InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                hintText: 'Search...'),
                          ),
                        ),
                        IconButton(
                            onPressed: () {
                              searchController.clear();
                            },
                            icon: const Icon(Icons.clear)),
                      ],
                    )),
              ),
              ResponsiveGridCol(
                  xl: 4,
                  lg: 5,
                  md: 6,
                  sm: 8,
                  xs: 12,
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: const ProductMenu(),
                  ))
            ]),
            Divider(
              indent: 50,
              endIndent: 50,
              thickness: 3,
              color: Colors.cyan[700],
            ),
          ],
        ),
      ),
      endDrawer:
          MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}

double searchviewPort(BuildContext context) {
  switch (MediaQuery.of(context).size.width) {
    case < 600:
      return MediaQuery.of(context).size.width / 7;
    case >= 600 && < 800:
      return MediaQuery.of(context).size.width / 6.2;
    case >= 800 && < 1200:
      return MediaQuery.of(context).size.width / 4;
    case >= 1200:
      return MediaQuery.of(context).size.width / 2.0;
    default:
      return MediaQuery.of(context).size.width / 1.8;
  }
}
