import '../models/khichiqorderstwentyseven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqorderstwentysevenItemWidget extends StatelessWidget {
  KhichiqorderstwentysevenItemWidget(
    this.khichiqorderstwentysevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KhichiqorderstwentysevenItemModel khichiqorderstwentysevenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.indigo100.withOpacity(0.5),
          width: 1.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Container(
        height: 118.v,
        width: 343.h,
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineIndigo1001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.topLeft,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(
                  right: 28.h,
                  bottom: 22.v,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      khichiqorderstwentysevenItemModelObj.nextAugTwentyThree!,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 6.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl4".tr,
                              style: CustomTextStyles.bodySmallff666666,
                            ),
                            TextSpan(
                              text: "lbl_pre_wedding3".tr.toUpperCase(),
                              style: CustomTextStyles.bodySmallff666666,
                            ),
                            TextSpan(
                              text: "lbl5".tr,
                              style: CustomTextStyles.bodySmallff666666,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 38.h,
                  top: 3.v,
                ),
                child: Text(
                  khichiqorderstwentysevenItemModelObj.siddheshwarShreyasi!,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 162.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath:
                              khichiqorderstwentysevenItemModelObj?.wedding,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.only(bottom: 6.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            top: 21.v,
                          ),
                          child: Text(
                            khichiqorderstwentysevenItemModelObj.wEDDING1!,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 21.v),
                          child: SizedBox(
                            child: Divider(
                              indent: 9.h,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 7.h,
                            top: 21.v,
                          ),
                          child: Text(
                            khichiqorderstwentysevenItemModelObj.upcoming!,
                            style: theme.textTheme.labelMedium,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 13.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            khichiqorderstwentysevenItemModelObj
                                .mainAugTwentyThree!,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: SizedBox(
                            height: 18.v,
                            child: VerticalDivider(
                              width: 1.h,
                              thickness: 1.v,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 7.v),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillRed.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            khichiqorderstwentysevenItemModelObj.price!,
                            style: CustomTextStyles.bodySmallRed600,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8.h),
                          padding: EdgeInsets.symmetric(
                            horizontal: 6.h,
                            vertical: 1.v,
                          ),
                          decoration: AppDecoration.fillOrange.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Text(
                            khichiqorderstwentysevenItemModelObj.team!,
                            style: CustomTextStyles.bodySmallOrange600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
