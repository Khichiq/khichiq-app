import '../models/khichiqonboardingdatainputsix_item_model.dart';
import 'package:vtracku_s_application6/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';

// ignore: must_be_immutable
class KhichiqonboardingdatainputsixItemWidget extends StatelessWidget {
  KhichiqonboardingdatainputsixItemWidget(
    this.khichiqonboardingdatainputsixItemModelObj, {
    Key? key,
    this.changeRadioButton1,
    this.changeRadioButton2,
    this.changeRadioButton3,
    this.changeRadioButton4,
  }) : super(
          key: key,
        );

  KhichiqonboardingdatainputsixItemModel
      khichiqonboardingdatainputsixItemModelObj;

  Function(String)? changeRadioButton1;

  Function(String)? changeRadioButton2;

  Function(String)? changeRadioButton3;

  Function(String)? changeRadioButton4;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_gender".tr,
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 10.v),
        Row(
          children: [
            CustomRadioButton(
              text: "lbl_male".tr,
              value: "lbl_male".tr,
              groupValue: khichiqonboardingdatainputsixItemModelObj.radioGroup!,
              onChange: (value) {
                changeRadioButton1!(value);
              },
            ),
            Spacer(
              flex: 52,
            ),
            CustomRadioButton(
              text: "lbl_female".tr,
              value: "lbl_female".tr,
              groupValue:
                  khichiqonboardingdatainputsixItemModelObj.radioGroup1!,
              onChange: (value) {
                changeRadioButton2!(value);
              },
            ),
            Spacer(
              flex: 47,
            ),
            CustomRadioButton(
              text: "lbl_other".tr,
              value: "lbl_other".tr,
              groupValue:
                  khichiqonboardingdatainputsixItemModelObj.radioGroup2!,
              onChange: (value) {
                changeRadioButton3!(value);
              },
            ),
          ],
        ),
        SizedBox(height: 12.v),
        CustomRadioButton(
          text: "msg_prefer_not_to_say".tr,
          value: "msg_prefer_not_to_say".tr,
          groupValue: khichiqonboardingdatainputsixItemModelObj.radioGroup3!,
          onChange: (value) {
            changeRadioButton4!(value);
          },
        ),
      ],
    );
  }
}
