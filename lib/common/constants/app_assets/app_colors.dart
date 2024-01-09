import 'package:flutter/material.dart';

class AppColors {
  static const Color backgroundLight = Colors.white;
  static const Color black = Colors.black;
  static const Color selectedItem = Colors.blueAccent;
  static const Color alertText = Colors.red;
  static const Color separatorColor = Colors.grey;
  static Color shimer400 = Colors.grey.shade400;
  static Color shimer300 = Colors.grey.shade300;
  static Color shimer100 = Colors.grey.shade100;
  static const Color backgroundDark = Color.fromARGB(255, 46, 44, 49);
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
    color: AppColors.backgroundDark,
  );
  static const titleGredText = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppColors.backgroundDark,
    overflow: TextOverflow.ellipsis,
  );
  static const titleListTextDetails = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: AppColors.backgroundDark,
    overflow: TextOverflow.ellipsis,
  );
  static const titleFullArticle = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.bold,
    color: AppColors.backgroundDark,
  );

  static const dateFullArticle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w400,
    color: AppColors.backgroundDark,
  );
  static const contendArticle = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w400,
    color: AppColors.backgroundDark,
  );
  static const dateSList = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.backgroundDark,
  );
  static const titleAgencyGridText = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    overflow: TextOverflow.ellipsis,
  );
  static const titListDetail = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w900,
    color: Colors.white,
  );
  static const tcontendListDetail = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    overflow: TextOverflow.ellipsis,
  );
  static const linkStyle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w900,
    color: Color.fromARGB(255, 1, 98, 176),
    overflow: TextOverflow.ellipsis,
    decoration: TextDecoration.underline,
    decorationThickness: 2,
  );
}
