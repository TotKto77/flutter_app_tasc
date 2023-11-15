import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/listofagency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/mylistview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 50),
        const NewsListWidget(),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(20),
          child: const Text(
            "News Agency",
            style: AppStyleText.mainText,
            textAlign: TextAlign.left,
          ),
        ),
        TopChannelsWidget(),
      ],
    ));
  }
}
