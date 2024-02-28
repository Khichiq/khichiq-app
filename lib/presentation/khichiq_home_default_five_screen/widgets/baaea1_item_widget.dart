import '../models/baaea1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class Baaea1ItemWidget extends StatelessWidget {
  Baaea1ItemWidget(
    this.baaea1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baaea1ItemModel baaea1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: baaea1ItemModelObj?.baaea,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          baaea1ItemModelObj.chinmay!,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(
            baaea1ItemModelObj.self!,
            style: theme.textTheme.labelMedium,
          ),
        ),
        SizedBox(height: 5.v),
        Container(
          width: 36.h,
          margin: EdgeInsets.only(left: 10.h),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillGreenA.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            baaea1ItemModelObj.free!,
            style: CustomTextStyles.bodySmallGreenA700,
          ),
        ),
      ],
    );
  }
}
