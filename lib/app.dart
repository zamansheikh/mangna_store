import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mangna_store/features/authentication/screens/onboarding.dart';
import 'package:mangna_store/utils/theme/theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mangna Store',
      themeMode: ThemeMode.system,
      theme: MAppTheme.lightTheme,
      darkTheme: MAppTheme.darkTheme,
      home: const OnBoarding(),
    );
  }
}
