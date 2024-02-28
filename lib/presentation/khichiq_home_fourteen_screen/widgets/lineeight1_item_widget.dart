import '../models/lineeight1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class Lineeight1ItemWidget extends StatelessWidget {
  Lineeight1ItemWidget(
    this.lineeight1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Lineeight1ItemModel lineeight1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBaa045e1A4554,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                    ),
                    SizedBox(height: 11.v),
                    Text(
                      "lbl_chinmay".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    SizedBox(height: 2.v),
                    Padding(
                      padding: EdgeInsets.only(left: 17.h),
                      child: Text(
                        "lbl_self".tr,
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
                        "lbl_free".tr,
                        style: CustomTextStyles.bodySmallGreenA700,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Column(
                    children: [
                      Container(
                        height: 60.adaptSize,
                        width: 60.adaptSize,
                        padding: EdgeInsets.symmetric(horizontal: 5.h),
                        decoration: AppDecoration.fillBlue.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder30,
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlayBlueGray700,
                          height: 60.v,
                          width: 48.h,
                          alignment: Alignment.center,
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Text(
                        "lbl_sara".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "lbl_photo".tr,
                        style: theme.textTheme.labelMedium,
                      ),
                      SizedBox(height: 5.v),
                      Container(
                        width: 54.h,
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.h,
                          vertical: 1.v,
                        ),
                        decoration: AppDecoration.fillRed.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Text(
                          "lbl_booked".tr,
                          style: CustomTextStyles.bodySmallRed600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 22.v),
        ],
      ),
    );
  }
}
