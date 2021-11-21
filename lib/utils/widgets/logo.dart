import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
    this.height,
    this.width,
    required this.logoImage,
  }) : super(key: key);
  final double? height;
  final double? width;
  final String logoImage;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      logoImage,
      height: height ?? 60,
      width: width ?? 80,
    );
  }
}
