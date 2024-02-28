import '../models/khichiqhomedefaultfive_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqhomedefaultfiveItemWidget extends StatelessWidget {
  KhichiqhomedefaultfiveItemWidget(
    this.khichiqhomedefaultfiveItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  KhichiqhomedefaultfiveItemModel khichiqhomedefaultfiveItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 109.h,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.only(bottom: 1.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  khichiqhomedefaultfiveItemModelObj.weddingShoot!,
                  style: theme.textTheme.titleMedium,
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          top: 2.v,
                          bottom: 11.v,
                        ),
                        child: Text(
                          khichiqhomedefaultfiveItemModelObj.swaraSanket!,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      Container(
                        height: 22.adaptSize,
                        width: 22.adaptSize,
                        margin: EdgeInsets.only(
                          left: 203.h,
                          bottom: 10.v,
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        decoration: AppDecoration.fillAmberA.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder11,
                        ),
                        child: CustomImageView(
                          imagePath:
                              khichiqhomedefaultfiveItemModelObj?.weddingShoot1,
                          height: 22.v,
                          width: 18.h,
                          alignment: Alignment.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
