import 'dart:ui';
import 'package:flutter/material.dart';

class AppClor {
  static const background = Color.fromARGB(255, 46, 44, 49);
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
}
