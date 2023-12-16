import 'package:flutter/material.dart';

class AppClor {
  static const background = Color.fromARGB(255, 46, 44, 49);

  static const shimmerGradient = LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}

class AppStyleText {
  static const mainText = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const smolText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const titleText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    overflow: TextOverflow.ellipsis,
  );
  static const comentText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Colors.white,
  );
  static const comentGredText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppClor.background,
  );
  static const titleGredText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppClor.background,
    overflow: TextOverflow.ellipsis,
  );
  static const titleListTextDetails = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: AppClor.background,
    overflow: TextOverflow.ellipsis,
  );
  static const titleFullArticle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppClor.background,
  );

  static const dateFullArticle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: AppClor.background,
  );
  static const contendArticle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    color: AppClor.background,
  );
  static const dateSList = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppClor.background,
  );
  static const titleAgencyGridText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );
  static const titListDetail = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static const tcontendListDetail = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    overflow: TextOverflow.ellipsis,
  );
}
