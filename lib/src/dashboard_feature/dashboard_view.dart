import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:mpesa/src/constant/constants.dart';
import 'package:mpesa/src/dashboard_feature/credito_view.dart';
import 'package:mpesa/src/dashboard_feature/movimento_view.dart';
import 'package:mpesa/src/dashboard_feature/servico_view.dart';
import 'package:mpesa/src/settings/settings_view.dart';
import 'package:provider/provider.dart';

import '../settings/navy_state.dart';
import '../settings/settings_controller.dart';
import 'home_view.dart';

class DashboardView extends StatefulWidget {
  static const routeName = '/dashboard';
  final SettingsController settingsController;
  const DashboardView({
    super.key,
    required this.settingsController,
  });

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: Provider.of<NavyState>(context, listen: false).index,
        showElevation: true,
        itemCornerRadius: 8,
        curve: Curves.easeInBack,
        onItemSelected: (index) => setState(() {
          Provider.of<NavyState>(context, listen: false)
              .controller
              .animateToPage(index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInSine);
          Provider.of<NavyState>(context, listen: false).jumpPage(index);
        }),
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text('Home'),
            activeColor: primary,
            inactiveColor: bgGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.credit_score),
            title: const Text('Crédito'),
            activeColor: primary,
            inactiveColor: bgGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.compare_arrows_sharp),
            title: const Text(
              'Movimentar',
            ),
            activeColor: primary,
            inactiveColor: bgGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.home_repair_service),
            title: const Text('Serviços'),
            activeColor: primary,
            inactiveColor: bgGrey,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: const Icon(Icons.miscellaneous_services_outlined),
            title: const Text('Definições'),
            activeColor: primary,
            inactiveColor: bgGrey,
            textAlign: TextAlign.center,
          ),
        ],
      ),
      body: SafeArea(child: Consumer<NavyState>(builder: (context, notfier, _) {
        return PageView(
            controller:
                Provider.of<NavyState>(context, listen: false).controller,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index) {
              setState(() {
                Provider.of<NavyState>(context, listen: false).jumpPage(index);
              });
            },
            children: [
              const HomeView(),
              const CreditoView(),
              const MovimentarDinheiroView(),
              const ServiceView(),
              SettingsView(controller: widget.settingsController)
            ]);
      })),
    );
  }
}
