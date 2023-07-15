import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';
import 'package:mpesa/src/dashboard_feature/dashboard_view.dart';
import 'package:mpesa/src/login_feature/forget_password_view.dart';

class LoginView extends StatefulWidget {
  static const routeName = '/';
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController textController = TextEditingController(text: '');

  void ontap(String number) {
    if (textController.text.trim().length < 4) {
      setState(() {
        textController.text = textController.text.trim() + number;
      });
    }

    if (textController.text.length == 4) {
      Navigator.restorablePushNamed(context, DashboardView.routeName);
    }
  }

  void deleteChar() {
    if (textController.text.trim().isNotEmpty) {
      textController.text = textController.text
          .trim()
          .substring(0, textController.text.trim().length - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: primary,
        body: Container(
          color: Colors.black12,
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      height: size.height * .48,
                      width: size.width,
                      child: Card(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "Por favor, digite o seu PIN",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w300),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: TextField(
                                readOnly: true,
                                textAlign: TextAlign.center,
                                controller: textController,
                                obscureText: true,
                                style: const TextStyle(
                                    fontSize: 40,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10),
                                  focusedBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    borderSide: const BorderSide(
                                      color: Colors.grey,
                                      width: 2.0,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  child: Container(
                    color: secundary,
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("1");
                                      });
                                    },
                                    child: const Text("1",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("2");
                                      });
                                    },
                                    child: const Text("2",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("3");
                                      });
                                    },
                                    child: const Text("3",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("4");
                                      });
                                    },
                                    child: const Text("4",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("5");
                                      });
                                    },
                                    child: const Text("5",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("6");
                                      });
                                    },
                                    child: const Text("6",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("7");
                                      });
                                    },
                                    child: const Text("7",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("8");
                                      });
                                    },
                                    child: const Text("8",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("9");
                                      });
                                    },
                                    child: const Text("9",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          deleteChar();
                                        });
                                      },
                                      child: const Icon(Icons.backspace)),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        ontap("0");
                                      });
                                    },
                                    child: const Text("0",
                                        style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                  GestureDetector(
                                      onTap: () {},
                                      child: const Icon(Icons.fingerprint)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.restorablePushNamed(context,
                                          ForgotPasswordView.routeName);
                                    },
                                    child: const Text("Esqueceste o teu PIN?",
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w300)),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
