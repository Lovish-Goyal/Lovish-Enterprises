import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../../../widgets/drawer.dart';

class Wishlist extends ConsumerStatefulWidget {
  const Wishlist({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _WishlistState();
}

class _WishlistState extends ConsumerState<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.cyan[700],
          title: const Text(
                  "Wishlist Items",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ), leading: IconButton( icon: const Icon(Icons.arrow_back,size: 40,), onPressed: () => context.go('/'),),
                centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: 500,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/image1.jpg"),
                      fit: BoxFit.fill)),
            ),
          ],
        ),
      ),
      endDrawer: MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}
