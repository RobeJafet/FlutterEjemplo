import 'package:fl_components/models/models.dart';
import 'package:flutter/material.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';
  static final menuOptions = <MenuOptions>[
    //ToDo: Borrar home
    MenuOptions(
        route: 'home',
        icon: Icons.home,
        name: 'Home Screen',
        screen: const HomeScreen()),
    MenuOptions(
        route: 'listview1',
        icon: Icons.list,
        name: 'List View 1',
        screen: const Listview1Screen()),
    MenuOptions(
        route: 'listview2',
        icon: Icons.list,
        name: 'List View 2',
        screen: const Listview2Screen()),
    MenuOptions(
        route: 'alert',
        icon: Icons.alarm,
        name: 'Alertas',
        screen: const AlertScreen()),
    MenuOptions(
        route: 'card',
        icon: Icons.card_membership,
        name: 'Tarjetas - Cards',
        screen: const CardScreen()),
    MenuOptions(
        route: 'avatar',
        icon: Icons.supervised_user_circle,
        name: 'Circle Avatar',
        screen: const AvatarScreen())
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }
    return appRoutes;
  }

  static Route<dynamic> onGenerateRoute(settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
