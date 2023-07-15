import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';

class ServiceView extends StatefulWidget {
  static const routeName = '/services';
  const ServiceView({super.key});

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Serviços"),
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
                  title: Text(
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
                  title: Text(
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
