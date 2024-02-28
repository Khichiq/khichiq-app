import '../models/baaea_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class BaaeaItemWidget extends StatelessWidget {
  BaaeaItemWidget(
    this.baaeaItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BaaeaItemModel baaeaItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: baaeaItemModelObj?.baaea,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          baaeaItemModelObj.chinmay!,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(
            baaeaItemModelObj.self!,
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
            baaeaItemModelObj.free!,
            style: CustomTextStyles.bodySmallGreenA700,
          ),
        ),
      ],
    );
  }
}
