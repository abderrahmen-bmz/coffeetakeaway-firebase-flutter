import 'package:coffeetakeaway/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home/home_screen.dart';

class CoffeeTakeAway extends StatelessWidget {
  const CoffeeTakeAway({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
         debugShowCheckedModeBanner: false,
         themeMode: ThemeMode.system,
         home :  SplashScreen(),
    );
  }
}