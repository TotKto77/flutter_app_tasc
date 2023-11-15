import 'package:flutter/material.dart';
import 'package:flutter_app_tasc/common/app_assets/app_colors.dart';

class SwipeAreaWidget extends StatelessWidget {
  final VoidCallback onSwipeUp;

  const SwipeAreaWidget({Key? key, required this.onSwipeUp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragUpdate: (details) {
        if (details.primaryDelta != null && details.primaryDelta! < 0) {
          onSwipeUp();
        }
      },
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 8),
        child: const Text(
          'Hot Nwes Swipe up to expand', // Или любой другой элемент, который вы хотите показать
          style: AppStyleText.mainText,
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
