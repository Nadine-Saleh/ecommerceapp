import 'package:flutter/material.dart';
import 'package:shoppy/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: NAppTheme.lightTheme,
      darkTheme: NAppTheme.darkTheme,
    );
  }
}
