import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Componentes en Flutter")),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int i) => ListTile(
          leading: Icon(
            AppRoutes.menuOptions[i].icon,
            color: AppTheme.primary,
          ),
          title: Text(AppRoutes.menuOptions[i].name),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.menuOptions[i].route);
          },
        ),
        itemCount: AppRoutes.menuOptions.length,
        separatorBuilder: (BuildContext _, int __) => const Divider(),
      ),
    );
  }
}
