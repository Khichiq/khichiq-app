import '../models/khichiqonboardingdatainputseve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqonboardingdatainputseveItemWidget extends StatelessWidget {
  KhichiqonboardingdatainputseveItemWidget(
    this.khichiqonboardingdatainputseveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KhichiqonboardingdatainputseveItemModel
      khichiqonboardingdatainputseveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: khichiqonboardingdatainputseveItemModelObj?.photographer,
            height: 18.adaptSize,
            width: 18.adaptSize,
            margin: EdgeInsets.only(
              top: 5.v,
              bottom: 18.v,
            ),
          ),
          CustomImageView(
            imagePath:
                khichiqonboardingdatainputseveItemModelObj?.photographer1,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(
              left: 16.h,
              bottom: 13.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 5.v,
              bottom: 14.v,
            ),
            child: Text(
              khichiqonboardingdatainputseveItemModelObj.photographer2!,
              style: theme.textTheme.bodyLarge,
            ),
          ),
        ],
      ),
    );
  }
}
