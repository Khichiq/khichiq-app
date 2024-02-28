import '../models/khichiqleadseditthirteen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqleadseditthirteenItemWidget extends StatelessWidget {
  KhichiqleadseditthirteenItemWidget(
    this.khichiqleadseditthirteenItemModelObj, {
    Key? key,
    this.onTapEVENTCounter,
  }) : super(
          key: key,
        );

  KhichiqleadseditthirteenItemModel khichiqleadseditthirteenItemModelObj;

  VoidCallback? onTapEVENTCounter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.outlineIndigo1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 27.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.topLeft,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      onTapEVENTCounter!.call();
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                khichiqleadseditthirteenItemModelObj
                                    .eVENTCounter!,
                                style: theme.textTheme.bodySmall,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowUp,
                                height: 16.adaptSize,
                                width: 16.adaptSize,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 9.v),
                        SizedBox(
                          height: 1.v,
                          width: 343.h,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                    margin: EdgeInsets.only(
                      left: 65.h,
                      top: 2.v,
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: 3.h,
                      vertical: 4.v,
                    ),
                    decoration: AppDecoration.success.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: CustomImageView(
                      imagePath: khichiqleadseditthirteenItemModelObj?.eVENTOne,
                      height: 4.v,
                      width: 6.h,
                      alignment: Alignment.centerRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 11.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  khichiqleadseditthirteenItemModelObj.preWedding!,
                  style: CustomTextStyles.titleMedium18,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    khichiqleadseditthirteenItemModelObj.time!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }
}
