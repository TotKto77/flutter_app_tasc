import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/expandable_grid_view.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/greed_of_hot_nwes.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/list_of_agency.dart';
import 'package:flutter_app_tasc/screens/home_sceen/components/my_list_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const SizedBox(height: 60),
        const NewsListWidget(),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.fromLTRB(24, 16, 25, 8),
          child: const Text(
            "News Agency",
            style: AppStyleText.mainText,
            textAlign: TextAlign.left,
          ),
        ),
        const TopChannelsWidget(),
        // ExpandableGridView(
        //   gridViewWidget: GridHotNews(), // Теперь вы передаете GridHotNews
        //   expandedHeight: MediaQuery.of(context).size.height,
        // ),
        const Expanded(child: GridHotNews()),
      ],
    ));
  }
}
