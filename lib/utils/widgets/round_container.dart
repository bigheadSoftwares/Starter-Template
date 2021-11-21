import 'package:easy_coding/big_head_softwares.dart';
import 'package:flutter/material.dart';

class RoundContainer extends StatelessWidget {
  const RoundContainer({
    Key? key,
    this.child,
    this.color,
    this.hPadding,
    this.vPadding,
    this.hMargin,
    this.vMargin,
    this.radius,
    this.height,
    this.width,
    this.boxShadow,
    this.alignment,
    this.boxBorder,
  }) : super(key: key);

  final Widget? child;
  final Color? color;
  final double? hPadding;
  final double? vPadding;
  final double? hMargin;
  final double? vMargin;
  final double? radius;
  final double? height;
  final double? width;
  final List<BoxShadow>? boxShadow;
  final Alignment? alignment;
  final BoxBorder? boxBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        alignment: alignment,
        margin: EdgeInsets.symmetric(
            horizontal: hMargin ?? 0, vertical: vMargin ?? 0),
        padding: EdgeInsets.symmetric(
            horizontal: hPadding ?? 20, vertical: vPadding ?? 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius ?? 12),
          color: color ?? theme(context).colorScheme.primary,
          border: boxBorder,
          boxShadow: boxShadow,
        ),
        child: child ?? const SizedBox.shrink());
  }
}
