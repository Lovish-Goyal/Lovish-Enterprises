import 'package:flutter/material.dart';
import 'package:lovish_enterprises/website/modules/auth/login.dart';

showAlertDialogSign(BuildContext context) {
  // set up the buttons
  // Widget cancelButton = TextButton(
  //   child: Text("Cancel"),
  //   onPressed:  () {},
  // );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    insetPadding: const EdgeInsets.symmetric(vertical: 140),
    title: const Center(child: Text("SignUp to Lovish Enterprises")),
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
        Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            child: const Text("Confirm Password")),
        Container(
          decoration: BoxDecoration(border: Border.all()),
          child: Row(
            children: [
              Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Icon(Icons.password_outlined)),
              Container(
                  margin: const EdgeInsets.only(right: 10),
                  width: 400,
                  child: const TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        hintText: 'Confirm Password'),
                  )),
            ],
          ),
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
            const Text("Already have an account?"),
            TextButton(onPressed: () => showAlertDialogLogin(context), child: const Text("Login"))
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
