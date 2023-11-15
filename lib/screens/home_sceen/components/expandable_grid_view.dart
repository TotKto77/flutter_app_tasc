import 'package:flutter/material.dart';
import 'swipe_area_widget.dart';

class ExpandableGridView extends StatefulWidget {
  final Widget gridViewWidget;
  final double collapsedHeight;
  final double expandedHeight;

  ExpandableGridView({
    required this.gridViewWidget,
    this.collapsedHeight = 300.0,
    required this.expandedHeight,
  });

  @override
  _ExpandableGridViewState createState() => _ExpandableGridViewState();
}

class _ExpandableGridViewState extends State<ExpandableGridView> {
  bool isExpanded = false;

  void _toggleExpanded() {
    setState(() {
      isExpanded = !isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedPositioned(
          duration: Duration(milliseconds: 300),
          bottom: 0,
          left: 0,
          right: 0,
          height: isExpanded ? widget.expandedHeight : widget.collapsedHeight,
          child: widget.gridViewWidget,
        ),
        Positioned(
          top:
              isExpanded ? 0 : (widget.expandedHeight - widget.collapsedHeight),
          left: 0,
          right: 0,
          child: SwipeAreaWidget(
            onSwipeUp: _toggleExpanded,
          ),
        ),
      ],
    );
  }
}
