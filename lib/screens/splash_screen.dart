import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_assets.dart';
import 'package:flutter_app_tasc/common/widgets/navigator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const MyBottomNavigation()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(AppAssets.images.stamdardAppLogo),
                fit: BoxFit
                    .cover, // Покроет весь экран, сохраняя пропорции изображения
              ),
            ),
          ),
          const Positioned(
            bottom: 30.0,
            left: 0.0,
            right: 0.0,
            child: Center(
              child: CircularProgressIndicator(), // Индикатор загрузки
            ),
          ),
        ],
      ),
    );
  }
}
