import 'package:flutter/material.dart';

class GradientRadioButton extends StatelessWidget {
  const GradientRadioButton({
    super.key,
    this.size,
    this.borderColor,
    this.fillColor,
    this.borderGradient,
    this.fillGradient,
    this.padding,
    required this.isActive,
  });

  final double? size;
  final Color? borderColor;
  final Color? fillColor;
  final Gradient? borderGradient;
  final Gradient? fillGradient;
  final double? padding;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 24,
      width: size ?? 24,
      padding: EdgeInsets.all(padding ?? 1.5),
      decoration: BoxDecoration(
        color: borderColor ?? Colors.grey,
        gradient: borderGradient,
        shape: BoxShape.circle,
      ),
      child:
          isActive
              ? Container(
                height: size ?? 24,
                width: size ?? 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: fillColor ?? Colors.grey,
                  gradient: fillGradient,
                ),
              )
              : Offstage(),
    );
  }
}
