import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:utils_widget/utils_widget.dart';

import 'buttons.dart';
import '../website/modules/auth/login.dart';
import '../website/modules/auth/signup.dart';

class AppbarView extends StatelessWidget {
  const AppbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Lovish Enterprises",
              style: TextStyle(color: Colors.white),
            ),
            if (MediaQuery.of(context).size.width > 451 &&
                MediaQuery.of(context).size.width < 600)
              Row(
                children: [
                  Textbuttonlight(
                    onPressed: () => showAlertDialogLogin(context),
                    text: 'Login',
                  ),
                  const Text(
                    "/",
                  ),
                  Textbuttonlight(
                    onPressed: () => showAlertDialogSign(context),
                    text: 'SignUp',
                  ),
                ],
              ),
          ]),
        ),
        tablet: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Lovish Enterprises",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Textbuttonlight(
                    onPressed: () => showAlertDialogLogin(context),
                    text: 'Login',
                  ),
                  const Text(
                    "/",
                  ),
                  Textbuttonlight(
                    onPressed: () => showAlertDialogSign(context),
                    text: 'SignUp',
                  ),
                ],
              ),
            ],
          ),
        ),
        desktop: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Lovish Enterprises",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Textbuttonlight(
                      text: "Home", onPressed: () => context.go('/')),
                  const SizedBox(
                    width: 20,
                  ),
                  Textbuttonlight(
                      text: "About Us", onPressed: () => context.go('/about')),
                  const SizedBox(
                    width: 20,
                  ),
                  Textbuttonlight(
                      text: "Dealer Enquiry",
                      onPressed: () => context.go('/enquiry')),
                  const SizedBox(
                    width: 20,
                  ),
                  Textbuttonlight(
                      text: "Contact Us",
                      onPressed: () => context.go('/contact')),
                ],
              ),
              Row(
                children: [
                  Textbuttonlight(
                    onPressed: () => showAlertDialogLogin(context),
                    text: 'Login',
                  ),
                  const Text(
                    "/",
                  ),
                  Textbuttonlight(
                    onPressed: () => showAlertDialogSign(context),
                    text: 'SignUp',
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
