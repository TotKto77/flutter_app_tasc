import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimerNewsListWidget extends StatelessWidget {
  const ShimerNewsListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(viewportFraction: 0.8);

    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
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
                color: Colors.grey,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
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
