import '../models/khichiqhomewidgetsfour_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqhomewidgetsfourItemWidget extends StatelessWidget {
  KhichiqhomewidgetsfourItemWidget(
    this.khichiqhomewidgetsfourItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KhichiqhomewidgetsfourItemModel khichiqhomewidgetsfourItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: khichiqhomewidgetsfourItemModelObj?.chinmay,
            height: 60.adaptSize,
            width: 60.adaptSize,
            radius: BorderRadius.circular(
              30.h,
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            khichiqhomewidgetsfourItemModelObj.chinmay1!,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(left: 17.h),
            child: Text(
              khichiqhomewidgetsfourItemModelObj.self!,
              style: theme.textTheme.labelMedium,
            ),
          ),
          SizedBox(height: 5.v),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
              right: 14.h,
            ),
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            decoration: AppDecoration.fillGreenA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 2.v),
                Text(
                  khichiqhomewidgetsfourItemModelObj.free!,
                  style: CustomTextStyles.bodySmallGreenA700,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
