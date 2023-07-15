import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mpesa/src/dashboard_feature/credito_view.dart';
import 'package:mpesa/src/dashboard_feature/dashboard_view.dart';
import 'package:mpesa/src/dashboard_feature/movimento_view.dart';
import 'package:mpesa/src/login_feature/forget_password_view.dart';
import 'package:mpesa/src/login_feature/login_view.dart';
import 'dashboard_feature/servico_view.dart';
import 'settings/settings_controller.dart';
import 'settings/settings_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
    required this.settingsController,
  });

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: settingsController,
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          restorationScopeId: 'app',
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale('en', ''),
          ],
          onGenerateTitle: (BuildContext context) =>
              AppLocalizations.of(context)!.appTitle,
          theme: ThemeData(
            primarySwatch: Colors.red,
            inputDecorationTheme: const InputDecorationTheme(
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(width: 3, color: Colors.red),
              ),
            ),
          ),
          darkTheme: ThemeData.dark(),
          themeMode: settingsController.themeMode,
          onGenerateRoute: (RouteSettings routeSettings) {
            return MaterialPageRoute<void>(
              settings: routeSettings,
              builder: (BuildContext context) {
                switch (routeSettings.name) {
                  case LoginView.routeName:
                    return const LoginView();
                  case DashboardView.routeName:
                    return DashboardView(
                        settingsController: settingsController);
                  case CreditoView.routeName:
                    return const CreditoView();
                  case ServiceView.routeName:
                    return const ServiceView();
                  case MovimentarDinheiroView.routeName:
                    return const MovimentarDinheiroView();
                  case ForgotPasswordView.routeName:
                    return const ForgotPasswordView();
                  case SettingsView.routeName:
                    return SettingsView(controller: settingsController);
                  default:
                    return const LoginView();
                }
              },
            );
          },
        );
      },
    );
  }
}
