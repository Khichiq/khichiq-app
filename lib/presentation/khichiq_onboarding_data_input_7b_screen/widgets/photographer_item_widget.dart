import '../models/photographer_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class PhotographerItemWidget extends StatelessWidget {
  PhotographerItemWidget(
    this.photographerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PhotographerItemModel photographerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 41.v,
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          CustomImageView(
            imagePath: photographerItemModelObj?.photographer,
            height: 28.adaptSize,
            width: 28.adaptSize,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 34.h),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(top: 5.v),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgCheckboxInactive,
                    height: 18.adaptSize,
                    width: 18.adaptSize,
                    margin: EdgeInsets.only(bottom: 3.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60.h),
                    child: Text(
                      photographerItemModelObj.photographer1!,
                      style: theme.textTheme.bodyLarge,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
