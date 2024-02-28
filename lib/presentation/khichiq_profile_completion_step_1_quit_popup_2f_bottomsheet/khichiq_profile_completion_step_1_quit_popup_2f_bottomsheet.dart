import 'package:vtracku_s_application6/widgets/custom_icon_button.dart';
import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';
import 'package:vtracku_s_application6/widgets/custom_outlined_button.dart';
import 'models/khichiq_profile_completion_step_1_quit_popup_2f_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_profile_completion_step_1_quit_popup_2f_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1QuitPopup2fBottomsheet
    extends StatefulWidget {
  const KhichiqProfileCompletionStep1QuitPopup2fBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqProfileCompletionStep1QuitPopup2fBottomsheetState createState() =>
      KhichiqProfileCompletionStep1QuitPopup2fBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqProfileCompletionStep1QuitPopup2fProvider(),
      child: KhichiqProfileCompletionStep1QuitPopup2fBottomsheet(),
    );
  }
}

class KhichiqProfileCompletionStep1QuitPopup2fBottomsheetState
    extends State<KhichiqProfileCompletionStep1QuitPopup2fBottomsheet> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(16.h, 15.v, 16.h, 16.v),
        decoration: AppDecoration.outlineGray300011,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 80.adaptSize,
                    width: 80.adaptSize,
                    margin: EdgeInsets.only(top: 8.v),
                    padding: EdgeInsets.all(10.h),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: CustomIconButton(
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      padding: EdgeInsets.all(11.h),
                      decoration: IconButtonStyleHelper.fillRed,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVideoCamera,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgCancel,
                    height: 16.adaptSize,
                    width: 16.adaptSize,
                    margin: EdgeInsets.only(
                      left: 115.h,
                      bottom: 72.v,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18.v),
            Text(
              "msg_are_you_sure_you".tr,
              style: CustomTextStyles.titleMedium18,
            ),
            SizedBox(height: 6.v),
            Container(
              width: 332.h,
              margin: EdgeInsets.only(
                left: 4.h,
                right: 5.h,
              ),
              child: Text(
                "msg_you_will_get_more".tr,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium!.copyWith(
                  height: 1.29,
                ),
              ),
            ),
            SizedBox(height: 35.v),
            CustomElevatedButton(
              text: "msg_complete_in_60_seconds".tr,
            ),
            SizedBox(height: 12.v),
            CustomOutlinedButton(
              text: "lbl_complete_later".tr,
            ),
            SizedBox(height: 18.v),
          ],
        ),
      ),
    );
  }
}
