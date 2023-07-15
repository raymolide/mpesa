import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';

class CreditoView extends StatefulWidget {
  static const routeName = '/credito';
  const CreditoView({super.key});

  @override
  State<CreditoView> createState() => _CreditoViewState();
}

class _CreditoViewState extends State<CreditoView> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crédito"),
        centerTitle: true,
      ),
      backgroundColor: bgGrey,
      body: Container(
          color: Colors.black12,
          child: SafeArea(
              child: Container(
            color: secundary,
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 32,
                    color: primary,
                  ),
                  leading: Icon(
                    Icons.monetization_on,
                    size: 32,
                    color: primary,
                  ),
                  title: const Text(
                    "Recarga",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Divider(
                  color: bgGrey,
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    size: 32,
                    color: primary,
                  ),
                  leading: Icon(
                    Icons.broadcast_on_home_outlined,
                    size: 32,
                    color: primary,
                  ),
                  title: const Text(
                    "Chamadas e Internet",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
