import '../models/leadsall1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class Leadsall1ItemWidget extends StatelessWidget {
  Leadsall1ItemWidget(
    this.leadsall1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Leadsall1ItemModel leadsall1ItemModelObj;

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
        height: 96.v,
        width: 343.h,
        padding: EdgeInsets.symmetric(
          horizontal: 11.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineIndigo1001.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder8,
        ),
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 3.v),
                child: Text(
                  leadsall1ItemModelObj.siddheshwarAnantnayakam!,
                  style: CustomTextStyles.titleMedium18,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.only(right: 26.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      leadsall1ItemModelObj.nextAugTwentyThree!,
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
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(right: 146.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: leadsall1ItemModelObj?.image,
                          height: 28.adaptSize,
                          width: 28.adaptSize,
                          margin: EdgeInsets.only(bottom: 9.v),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 12.h,
                              top: 21.v,
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 35.h,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 6.h,
                                    vertical: 1.v,
                                  ),
                                  decoration: AppDecoration.fillGreenA.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder4,
                                  ),
                                  child: Text(
                                    leadsall1ItemModelObj.newVar!,
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
                                    leadsall1ItemModelObj.wedding!,
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
                                    leadsall1ItemModelObj.call!,
                                    style: theme.textTheme.labelMedium,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 1.v),
                          child: Text(
                            leadsall1ItemModelObj.mainAugTwentyThree!,
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
