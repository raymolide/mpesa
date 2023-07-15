import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';

class MovimentarDinheiroView extends StatefulWidget {
  static const routeName = '/movimentar';
  const MovimentarDinheiroView({super.key});

  @override
  State<MovimentarDinheiroView> createState() => _MovimentarDinheiroViewState();
}

class _MovimentarDinheiroViewState extends State<MovimentarDinheiroView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Movimentar Dinheiro"),
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
                    "Pagamento",
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
                    "Levantamento",
                    style: TextStyle(fontSize: 22),
                  ),
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
                    "Pedir dinheiro",
                    style: TextStyle(fontSize: 22),
                  ),
                )
              ],
            ),
          ))),
    );
  }
}
