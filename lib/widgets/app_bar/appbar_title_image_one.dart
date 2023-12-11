import 'package:flutter/material.dart';
import '../../core/utils/app_export.dart';

// ignore: must_be_immutable
class AppbarTitleImageOne extends StatelessWidget {
  AppbarTitleImageOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //  borderRadius: BorderRadiusStyle.roundedBorder33,
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 10,
          width: 232,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(33),
        ),
      ),
    );
  }
}
