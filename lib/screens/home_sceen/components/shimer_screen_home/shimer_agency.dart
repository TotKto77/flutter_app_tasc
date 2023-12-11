import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimerTopChannelsWidget extends StatelessWidget {
  const ShimerTopChannelsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      enabled: true,
      child: SizedBox(
        height: 150,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20, // Отображаем 20 элементов
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    width: 38,
                    height: 16,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 4),
                  Container(
                    width: 38,
                    height: 16,
                    color: Colors.grey[400],
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
