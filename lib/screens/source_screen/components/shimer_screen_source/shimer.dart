import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimerSource extends StatelessWidget {
  const ShimerSource({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 8,
        mainAxisSpacing: 16,
      ),
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: AppColors.shimer300,
          highlightColor: AppColors.shimer100,
          enabled: true,
          child: Container(
            margin: const EdgeInsets.only(bottom: 10),
            height: 60,
            width: 60,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.separatorColor,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        );
      },
      itemCount: 20,
    );
  }
}

class SimeerTextfield extends StatelessWidget {
  const SimeerTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: AppColors.shimer300,
        highlightColor: AppColors.shimer100,
        enabled: true,
        child: Container(
          padding: const EdgeInsetsDirectional.fromSTEB(16, 50, 16, 0),
          decoration: BoxDecoration(
            color: AppColors.separatorColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ));
  }
}
