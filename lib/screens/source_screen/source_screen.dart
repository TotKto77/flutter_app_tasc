import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/screens/source_screen/components/source_grid.dart';

class SuorceScreen extends StatelessWidget {
  const SuorceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(height: 80),
          Flexible(child: AgencyGrid()),
          SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
