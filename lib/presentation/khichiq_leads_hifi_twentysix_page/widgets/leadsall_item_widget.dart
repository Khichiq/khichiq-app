import '../models/leadsall_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class LeadsallItemWidget extends StatelessWidget {
  LeadsallItemWidget(
    this.leadsallItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LeadsallItemModel leadsallItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(11.h),
      decoration: AppDecoration.outlineIndigo1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 48.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: leadsallItemModelObj?.image,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  margin: EdgeInsets.only(
                    top: 3.v,
                    bottom: 8.v,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          leadsallItemModelObj.siddheshwarAnantnayakam!,
                          style: CustomTextStyles.titleMedium18,
                        ),
                        SizedBox(height: 1.v),
                        Row(
                          children: [
                            Container(
                              width: 35.h,
                              padding: EdgeInsets.symmetric(
                                horizontal: 6.h,
                                vertical: 1.v,
                              ),
                              decoration: AppDecoration.fillGreenA.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder4,
                              ),
                              child: Text(
                                leadsallItemModelObj.newVar!,
                                style: CustomTextStyles.bodySmallGreenA700,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 8.h,
                                top: 2.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                leadsallItemModelObj.wedding!,
                                style: theme.textTheme.labelMedium,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: 2.v,
                                bottom: 1.v,
                              ),
                              child: SizedBox(
                                child: Divider(
                                  indent: 9.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 7.h,
                                top: 2.v,
                                bottom: 1.v,
                              ),
                              child: Text(
                                leadsallItemModelObj.call!,
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
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 26.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    leadsallItemModelObj.mainAugTwentyThree!,
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
                    leadsallItemModelObj.nextAugTwentyThree!,
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
        ],
      ),
    );
  }
}
