import '../models/builtforyou_item_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class BuiltforyouItemWidget extends StatelessWidget {
  BuiltforyouItemWidget(
    this.builtforyouItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BuiltforyouItemModel builtforyouItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "lbl_built_for_you".tr,
          style: theme.textTheme.headlineLarge,
        ),
        SizedBox(height: 11.v),
        SizedBox(
          width: 312.h,
          child: Text(
            "msg_lorem_ipsum_dolor".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumGray500.copyWith(
              height: 1.29,
            ),
          ),
        ),
      ],
    );
  }
}
