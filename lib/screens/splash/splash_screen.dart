import 'package:coffeetakeaway/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 4000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/splash_screens/splash01.jpg'), fit: BoxFit.cover),
      ),
      child: const Padding(
        padding: EdgeInsets.only(top: 600),
        child: SpinKitFadingCircle(color: Colors.white, size: 100),
      ),
    );
  }
}
