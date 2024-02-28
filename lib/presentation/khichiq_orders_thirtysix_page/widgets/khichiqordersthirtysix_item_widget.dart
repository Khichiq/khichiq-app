import '../models/khichiqordersthirtysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqordersthirtysixItemWidget extends StatelessWidget {
  KhichiqordersthirtysixItemWidget(
    this.khichiqordersthirtysixItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KhichiqordersthirtysixItemModel khichiqordersthirtysixItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineIndigo1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 3.v),
          Padding(
            padding: EdgeInsets.only(right: 90.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: khichiqordersthirtysixItemModelObj?.image,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          khichiqordersthirtysixItemModelObj
                              .siddheshwarShreyasi!,
                          style: CustomTextStyles.titleMedium18,
                        ),
                        SizedBox(height: 1.v),
                        Row(
                          children: [
                            Text(
                              khichiqordersthirtysixItemModelObj.wedding!,
                              style: theme.textTheme.labelMedium,
                            ),
                            SizedBox(
                              child: Divider(
                                indent: 8.h,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 7.h),
                              child: Text(
                                khichiqordersthirtysixItemModelObj.upcoming!,
                                style: theme.textTheme.labelMedium,
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
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(right: 28.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    khichiqordersthirtysixItemModelObj.mainAugTwentyThree!,
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
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 1.v,
                  ),
                  child: Text(
                    khichiqordersthirtysixItemModelObj.nextAugTwentyThree!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 6.h,
                    top: 4.v,
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
                  khichiqordersthirtysixItemModelObj.price!,
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
                  khichiqordersthirtysixItemModelObj.team!,
                  style: CustomTextStyles.bodySmallOrange600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
