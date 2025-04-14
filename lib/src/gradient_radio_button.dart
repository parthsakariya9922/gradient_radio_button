import 'package:flutter/material.dart';

class GradientRadioButton extends StatelessWidget {
  const GradientRadioButton({
    super.key,
    required this.isActive,
    this.borderColor,
    this.activeColor,
    this.backGroundColor,
    this.borderGradient,
    this.activeGradient,
    this.size,
    this.padding,
    this.borderSize,
    this.borderRadius,
  });

  final bool isActive;
  final Color? borderColor;
  final Color? activeColor;
  final Color? backGroundColor;
  final Gradient? borderGradient;
  final Gradient? activeGradient;
  final double? size;
  final double? padding;
  final double? borderSize;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 24,
      width: size ?? 24,
      padding: EdgeInsets.all(borderSize ?? 1),
      decoration: BoxDecoration(
        color: borderColor ?? Colors.grey,
        gradient: borderGradient,
        borderRadius: BorderRadius.circular(borderRadius ?? 100),
      ),
      child: Container(
        padding: EdgeInsets.all(padding ?? 1.5),
        decoration: BoxDecoration(
          color: backGroundColor ?? Colors.white,
          borderRadius: BorderRadius.circular(borderRadius ?? 100),
        ),
        child:
            isActive
                ? Container(
                  decoration: BoxDecoration(
                    color: activeColor ?? Colors.grey,
                    gradient: activeGradient,
                    borderRadius: BorderRadius.circular(borderRadius ?? 100),
                  ),
                )
                : Container(
                  decoration: BoxDecoration(
                    color: backGroundColor ?? Colors.white,
                    borderRadius: BorderRadius.circular(borderRadius ?? 100),
                  ),
                ),
      ),
    );
  }
}
