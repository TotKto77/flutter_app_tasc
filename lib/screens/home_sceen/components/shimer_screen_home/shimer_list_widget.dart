import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/constants/app_assets/app_colors.dart';
import 'package:shimmer/shimmer.dart';

class ShimerNewsListWidget extends StatelessWidget {
  const ShimerNewsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.8);

    return Shimmer.fromColors(
      baseColor: AppColors.shimer300,
      highlightColor: AppColors.shimer100,
      enabled: true,
      child: SizedBox(
        height: 200,
        child: PageView.builder(
          controller: pageController,
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Container(
              width: MediaQuery.of(context).size.width * 0.7,
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: AppColors.separatorColor,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(
                    color: AppColors.black,
                    blurRadius: 4.0,
                    spreadRadius: 2.0,
                    offset: Offset(2.0, 2.0),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
