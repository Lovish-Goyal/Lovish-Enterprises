import 'package:flutter/material.dart';
import 'package:lovish_enterprises/website/modules/auth/signup.dart';

showAlertDialogLogin(BuildContext context) {
  AlertDialog alert = AlertDialog(
    insetPadding: const EdgeInsets.symmetric(vertical: 140),
    title: const Center(child: Text("Login to Lovish Enterprises")),
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text("Username")),
        Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.email_outlined)),
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 400,
                  child: const TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        hintText: 'Email'),
                  )),
            ],
          ),
        ),
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text("Password")),
        Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.password)),
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 400,
                  child: const TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        hintText: 'Password'),
                  )),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: () {}, child: const Text("Forgot Password ?"))
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Center(
          child: ElevatedButton(onPressed: () {}, child: const Text("SignUp")),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("NEW USER?"),
            TextButton(onPressed: () => showAlertDialogSign(context), child: const Text("SignUp"))
          ],
        ),
      ],
    ),
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
