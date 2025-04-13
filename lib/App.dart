import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shoppy/features/authentication/screens/onboarding/onboarding.dart';
import 'package:shoppy/features/authentication/screens/signup/Signup.dart';
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
      home: const Onboarding(),
    );
  }
}
