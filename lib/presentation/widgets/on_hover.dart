import 'package:flutter/material.dart';

class OnHoverWidget extends StatefulWidget {
  const OnHoverWidget({
    required this.builder,
    this.delay = const Duration(milliseconds: 0),
  });

  final Widget Function(bool isHovered) builder;
  final Duration delay;

  @override
  State<OnHoverWidget> createState() => _OnHoverWidgetState();
}

class _OnHoverWidgetState extends State<OnHoverWidget> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        Future.delayed(widget.delay, () {
          setState(() {
            isHovered = true;
          });
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: widget.builder(isHovered),
    );
  }
}