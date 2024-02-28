import '../models/baaea2_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class Baaea2ItemWidget extends StatelessWidget {
  Baaea2ItemWidget(
    this.baaea2ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Baaea2ItemModel baaea2ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: baaea2ItemModelObj?.baaea,
          height: 60.adaptSize,
          width: 60.adaptSize,
          radius: BorderRadius.circular(
            30.h,
          ),
        ),
        SizedBox(height: 11.v),
        Text(
          baaea2ItemModelObj.chinmay!,
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(height: 2.v),
        Padding(
          padding: EdgeInsets.only(left: 17.h),
          child: Text(
            baaea2ItemModelObj.self!,
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
            baaea2ItemModelObj.free!,
            style: CustomTextStyles.bodySmallGreenA700,
          ),
        ),
      ],
    );
  }
}
