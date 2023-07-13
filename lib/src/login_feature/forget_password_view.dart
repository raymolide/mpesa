import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';

class ForgotPasswordView extends StatefulWidget {
  static const routeName = '/forgotpassword';
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  TextEditingController textController = TextEditingController(text: '');

  void ontap(String number) {
    if (textController.text.trim().length < 4) {
      setState(() {
        textController.text = textController.text.trim() + number;
      });
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
        appBar: AppBar(
          title: const Text("Linha do Cliente"),
          centerTitle: true,
        ),
        backgroundColor: bgGrey,
        body: Container(
          color: Colors.black12,
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 100.0),
                        child: Icon(
                          Icons.wechat,
                          color: primary,
                          size: 100,
                        )),
                  ),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Por favor, contacta a Linha do Cliente para obteres um novo PIN",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(primary)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/checkout');
                              },
                              child: const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      'Web Chat',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18),
                                    )
                                  ])),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
        ));
  }
}
