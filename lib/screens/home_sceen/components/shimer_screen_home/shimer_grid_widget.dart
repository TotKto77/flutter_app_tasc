import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimerGridWidget extends StatelessWidget {
  const ShimerGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: AppColors.shimer300,
          highlightColor: AppColors.shimer100,
          enabled: true,
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.separatorColor,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 150,
          ),
        );
      },
      itemCount: 6,
    );
  }
}
