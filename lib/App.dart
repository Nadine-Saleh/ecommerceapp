import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoppy/features/shop/screens/home/home.dart';
import 'package:shoppy/navigation_bar.dart';
import 'package:shoppy/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: NAppTheme.lightTheme,
      darkTheme: NAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      home: const NNavigationBar(),
      // home: const Onboarding(),
    );
  }
}
