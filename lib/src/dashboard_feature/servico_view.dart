import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';
import 'package:mpesa/src/dashboard_feature/widget/card_service.dart';
import 'package:mpesa/src/dashboard_feature/widget/tag.dart';

class ServiceView extends StatefulWidget {
  static const routeName = '/services';
  const ServiceView({super.key});

  @override
  State<ServiceView> createState() => _ServiceViewState();
}

class _ServiceViewState extends State<ServiceView> {
  final controller = PageController(initialPage: 0);
  final controllerFruits = PageController(initialPage: 0);
  bool activeActiveAll = false;
  bool activeTV = false;
  bool activeEducacao = false;
  bool activeUtilidade = false;

  @override
  void initState() {
    activeActiveAll = true;
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Serviços"),
        centerTitle: true,
      ),
      backgroundColor: bgGrey,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: SizedBox(
              width: size.width,
              height: 35,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  InkWell(
                    child: Tag(
                        tag: "Todos os Serviços",
                        icon: Icons.all_inclusive_sharp,
                        active: activeActiveAll),
                    onTap: () {
                      setState(() {
                        activeActiveAll = true;
                        activeUtilidade = false;
                        activeTV = false;
                        activeEducacao = false;

                        controller.jumpToPage(0);
                      });
                    },
                  ),
                  InkWell(
                    child: Tag(
                        tag: "Pagamento de TV",
                        icon: Icons.tv_rounded,
                        active: activeTV),
                    onTap: () {
                      setState(() {
                        activeActiveAll = false;

                        activeUtilidade = false;
                        activeTV = true;
                        activeEducacao = false;
                        controller.jumpToPage(1);
                      });
                    },
                  ),
                  InkWell(
                      child: Tag(
                          tag: "Educação",
                          icon: Icons.school,
                          active: activeEducacao),
                      onTap: () {
                        setState(() {
                          activeActiveAll = false;

                          activeUtilidade = false;
                          activeTV = false;
                          activeEducacao = true;

                          controller.jumpToPage(2);
                        });
                      }),
                  InkWell(
                    child: Tag(
                        tag: "Utilidades",
                        icon: Icons.tips_and_updates_outlined,
                        active: activeUtilidade),
                    onTap: () {
                      setState(() {
                        activeActiveAll = false;
                        activeUtilidade = true;
                        activeTV = false;
                        activeEducacao = false;
                        controller.jumpToPage(3);
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: controller,
              scrollDirection: Axis.vertical,
              onPageChanged: (index) {
                setState(() {
                  activeActiveAll = false;
                  activeTV = false;
                  activeUtilidade = false;
                  activeEducacao = false;
                  switch (index) {
                    case 0:
                      activeActiveAll = true;
                      break;
                    case 1:
                      activeTV = true;
                      break;
                    case 2:
                      activeEducacao = true;
                      break;
                    case 3:
                      activeUtilidade = true;
                      break;
                  }
                });
              },
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Column(
                        children: [
                          const ListTile(
                            title: Text(
                              'Recentes',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          SizedBox(
                            width: size.width,
                            height: 100,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                const ServiceCard(
                                  icon: Icons.lightbulb_outline_sharp,
                                  label: "Credelec",
                                  color: Colors.yellow,
                                ),
                                const ServiceCard(
                                  icon: Icons.lightbulb_outline_sharp,
                                  label: "Txuna M-Pesa",
                                  color: Colors.purple,
                                ),
                                const ServiceCard(
                                  icon: Icons.lightbulb_outline_sharp,
                                  label: "FIPAG",
                                  color: Colors.yellow,
                                ),
                                ServiceCard(
                                  icon: Icons.lightbulb_outline_sharp,
                                  label: "DStv",
                                  color: Colors.teal.shade400,
                                ),
                                const ServiceCard(
                                  icon: Icons.lightbulb_outline_sharp,
                                  label: "Xitique",
                                  color: Colors.purple,
                                )
                              ],
                            ),
                          ),
                          const ListTile(
                            title: Text(
                              'Descobre mais',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ),
                          GridView(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                            ),
                            children: [
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Credelec",
                                color: Colors.yellow,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Txuna M-Pesa",
                                color: Colors.purple,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "FIPAG",
                                color: Colors.yellow,
                              ),
                              ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "DStv",
                                color: Colors.teal.shade400,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Xitique",
                                color: Colors.purple,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Credelec",
                                color: Colors.yellow,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "FIPAG",
                                color: Colors.yellow,
                              ),
                              ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "DStv",
                                color: Colors.teal.shade400,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Xitique",
                                color: Colors.purple,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Credelec",
                                color: Colors.yellow,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Xitique",
                                color: Colors.purple,
                              ),
                              const ServiceCard(
                                icon: Icons.lightbulb_outline_sharp,
                                label: "Credelec",
                                color: Colors.yellow,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                ListView(
                  children: [
                    Column(
                      children: const [
                        ListTile(
                          title: Text(
                            'Pagamento de TV',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: const [
                    ListTile(
                      title: Text(
                        'Educação',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: const [
                    ListTile(
                      title: Text(
                        'Utilidade',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
