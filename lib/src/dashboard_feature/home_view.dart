import 'package:flutter/material.dart';
import 'package:mpesa/src/settings/navy_state.dart';
import 'package:provider/provider.dart';
import '../constant/constants.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(child: Container(color: primary)),
              Expanded(flex: 2, child: Container(color: bgGrey))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Olá RAIMUNDO",
                      style: TextStyle(
                          color: secundary,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Último acesso: 13 de Julho, 22:44",
                      style: TextStyle(
                          color: secundary,
                          fontSize: 18,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 70,
            child: SizedBox(
              height: 130,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: secundary)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Ver Saldo",
                                style: TextStyle(
                                    color: secundary,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700),
                              ),
                              Switch(
                                  inactiveThumbColor: secundary,
                                  inactiveTrackColor: bgGrey,
                                  value: false,
                                  onChanged: (value) {})
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "*********",
                                style: TextStyle(
                                    color: secundary,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: SizedBox(
              height: 100,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                    child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.assignment_sharp,
                        color: Colors.grey.shade600,
                      ),
                      const Text(
                        "Mini Extracto",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: primary,
                      ),
                    ],
                  ),
                )),
              ),
            ),
          ),
          Positioned(
            top: 300,
            child: SizedBox(
              height: 150,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.person_outlined,
                                color: Colors.grey.shade600,
                                size: 40,
                              ),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  "Transferir dinheiro",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.home_outlined,
                                color: Colors.grey.shade600,
                                size: 40,
                              ),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  "Levantamento no Agente",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.lightbulb,
                                color: Colors.grey.shade600,
                                size: 40,
                              ),
                              const SizedBox(
                                width: 100,
                                child: Text(
                                  "Credelec",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
              top: 460,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("Descobrir",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    )),
              )),
          Positioned(
            top: 500,
            child: SizedBox(
              height: 100,
              width: size.width,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      Provider.of<NavyState>(context, listen: false)
                          .controller
                          .jumpTo(2);
                      Provider.of<NavyState>(context, listen: false)
                          .controller
                          .jumpTo(3);
                    });
                    // Navigator.restorablePushNamed(context, CreditoView.routeName);
                  },
                  child: Card(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          color: Colors.blue.shade300,
                          width: 50,
                          height: 50,
                          child: Icon(
                            Icons.money_outlined,
                            color: secundary,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Levantar Dinheiro",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                "Clica aqui para efectuar o levantamento de dinheiro em ATM de forma mais rápida.",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                softWrap: true,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
