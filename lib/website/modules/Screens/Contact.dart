import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lovish_enterprises/website/bottom.dart';
import 'package:responsive_grid/responsive_grid.dart';
import '../../../widgets/appbar.dart';
import '../../../widgets/drawer.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.cyan[700],
          title: const AppbarView()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Center(
                child: Text(
                  "Contact Us",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan[700]),
                ),
              ),
            ),
            const Divider(
              indent: 100,
              endIndent: 100,
              color: Colors.cyan,
              thickness: 3,
            ),
            ResponsiveGridRow(children: [
              ResponsiveGridCol(
                xl: 6,
                lg: 6,
                md: 12,
                sm: 12,
                xs: 12,
                child: Container(
                  color: Colors.cyan[700],
                  margin: const EdgeInsets.all(30),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: const Center(
                          child: Text(
                            "Contact Details",
                            style:
                                TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: const Row(
                          children: [
                            Text(
                              "Email:",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              "goyallovish1727@gmail.com",
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: const Row(
                          children: [
                            Text("Phone:",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 30,
                            ),
                            Text("(+91) 8607605196",
                                style: TextStyle(
                                  fontSize: 20,
                                )),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        child: const Row(
                          children: [
                            Text("Address",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 300,
                              child: Column(
                                children: [
                                  Text("Near Govt School, Khudda Khurd",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  Text("Ambala Cantt 133004",
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                  xl: 6,
                  lg: 6,
                  md: 12,
                  sm: 12,
                  xs: 12,
                  child: Container(
                    margin: const EdgeInsets.all(30),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.cyan, width: 3),
                        borderRadius: BorderRadius.circular(30)),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.only(top: 30, left: 30),
                                child: const Text(
                                  "Email Address:",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 20, bottom: 10, right: 50),
                              child: TextFormField(
                                validator: (value) {
                                  if (value!.isValidEmail == false) {
                                    return "Please enter a valid email address";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16.0),
                                  hintText:
                                      "Please enter a valid email address",
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 30, left: 30),
                                child: const Text(
                                  "Email Name",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 20, bottom: 10, right: 50),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16.0),
                                  hintText: "Please Enter Your Name",
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 30, left: 30),
                                child: const Text(
                                  "Mobile No.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 20, bottom: 10, right: 50),
                              child: TextFormField(
                                keyboardType: TextInputType.number,
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.allow(
                                      RegExp(r'[0-9]')),
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16.0),
                                  hintText:
                                      "Please enter a valid Phone number",
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                            Container(
                                margin: const EdgeInsets.only(top: 30, left: 30),
                                child: const Text(
                                  "Message",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                )),
                            Container(
                              margin: const EdgeInsets.only(
                                  top: 10, left: 20, bottom: 10, right: 50),
                              child: TextFormField(
                                maxLines: 10,
                                minLines: 5,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(16.0),
                                  hintText: "Enter Your Message",
                                  filled: true,
                                  fillColor: Colors.grey.withOpacity(0.1),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(20),
                              child: Center(
                                child: SizedBox(
                                  width: 200,
                                  height: 40,
                                  child: ElevatedButton(
                                      onPressed: () {
                                        if (_formKey.currentState!
                                            .validate()) {
                                          showDialog(
                                              context: context,
                                              builder:
                                                  (BuildContext context) {
                                                return AlertDialog(
                                                  title:
                                                      const Text("Success"),
                                                  content: const Text(
                                                      "Form Submitted Successfully"),
                                                  actions: [
                                                    ElevatedButton(
                                                        onPressed: () {
                                                          Navigator.of(
                                                                  context)
                                                              .pop();
                                                        },
                                                        child:
                                                            const Text("OK"))
                                                  ],
                                                );
                                              });
                                        }
                                      },
                                      child: const Text("ok")),
                                ),
                              ),
                            )
                          ],
                        )),
                  )),
            ]),
            const Bottom()
          ],
        ),
      ),
      endDrawer: MediaQuery.of(context).size.width > 1200 ? null : const EndDrawer(),
    );
  }
}

extension extString on String {
  bool get isValidEmail {
    final emailRegExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return emailRegExp.hasMatch(this);
  }

  bool get isValidName {
    final nameRegExp =
        RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$");
    return nameRegExp.hasMatch(this);
  }

  bool get isValidPassword {
    final passwordRegExp = RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>');
    return passwordRegExp.hasMatch(this);
  }

  bool get isNotNull {
    return this!= 0;
  }

  bool get isValidPhone {
    final phoneRegExp = RegExp(r"^\+?0[0-9]{10}$");
    return phoneRegExp.hasMatch(this);
  }

  // bool isMobileNumberValid () {
  //   String regexPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
  //   var regExp = new RegExp(regexPattern);

  //   if (this.length == 0) {
  //     return false;
  //   } else if (regExp.hasMatch(this)) {
  //     return true;
  //   }
  //   return false;
  // }
}
