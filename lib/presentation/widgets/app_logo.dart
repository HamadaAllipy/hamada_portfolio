import 'package:amr_portfolio/values/values.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    Key? key,
    this.title = "H.A",
    this.titleColor = AppColors.black,
    this.titleStyle,
    this.fontSize = 60,
  }) : super(key: key);

  final String title;
  final TextStyle? titleStyle;
  final Color titleColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: titleStyle ??
          GoogleFonts.aclonica(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
    );
  }
}
