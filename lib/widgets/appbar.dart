import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'buttons.dart';
import '../website/modules/auth/login.dart';
import '../website/modules/auth/signup.dart';

class AppbarView extends StatelessWidget {
  const AppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 80),
      child: responsiveAppbar(context),
    );
  }
}

Widget responsiveAppbar(BuildContext context) {
  switch (MediaQuery.of(context).size.width) {
    case < 750:
      return const Center(
        child: Text(
          "Lovish Enterprises",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      );
    case >= 750 && < 1200:
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: const Text(
              "Lovish Enterprises",
              style: TextStyle(color: Colors.black54, fontSize: 30),
            ),
          ),
          Row(
            children: [
              Textbuttonlight(
                  text: "Login",
                  onPressed: () => showAlertDialogLogin(context)),
              Text(
                "/",
                style: TextStyle(color: Colors.white.withOpacity(.8)),
              ),
              Textbuttonlight(
                text: "SignUp",
                onPressed: () => showAlertDialogSign(context),
              ),
              const SizedBox(
                width: 30,
              ),
              Textbuttonlight(
                  text: "Wishlist", onPressed: () => context.go('/wishlist'))
            ],
          ),
        ],
      );
    case >= 1200:
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Lovish Enterprises",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextbuttonDark(text: "Home", onPressed: () => context.go('/')),
              const VerticalDivider(),
              TextbuttonDark(
                  text: "About Us", onPressed: () => context.go('/about')),
              const VerticalDivider(),
              TextbuttonDark(
                  text: "Dealer Enquiry",
                  onPressed: () => context.go('/enquiry')),
              const VerticalDivider(),
              TextbuttonDark(
                  text: "Contact Us", onPressed: () => context.go('/contact')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () => context.go('/search'),
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () => context.go('/wishlist'),
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  )),
              ElevatedButton(
                  onPressed: () => showAlertDialogLogin(context),
                  child: const Text("Login")),
            ],
          ),
        ],
      );

    default:
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Lovish Enterprises",
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextbuttonDark(text: "Home", onPressed: () => context.go('/')),
              const VerticalDivider(),
              TextbuttonDark(
                  text: "About Us", onPressed: () => context.go('/about')),
              const VerticalDivider(),
              TextbuttonDark(
                  text: "Dealer Enquiry",
                  onPressed: () => context.go('/enquiry')),
              const VerticalDivider(),
              TextbuttonDark(
                  text: "Contact Us", onPressed: () => context.go('/contact')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () => context.go('/search'),
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                  )),
              IconButton(
                  onPressed: () => context.go('/wishlist'),
                  icon: const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  )),
              ElevatedButton(
                  onPressed: () => showAlertDialogLogin(context),
                  child: const Text("Login")),
            ],
          ),
        ],
      );
  }
}
