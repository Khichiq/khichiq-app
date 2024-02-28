import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';
import 'models/khichiq_onboarding_data_input_8d_one_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_onboarding_data_input_8d_one_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInput8dOneBottomsheet extends StatefulWidget {
  const KhichiqOnboardingDataInput8dOneBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOnboardingDataInput8dOneBottomsheetState createState() =>
      KhichiqOnboardingDataInput8dOneBottomsheetState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOnboardingDataInput8dOneProvider(),
      child: KhichiqOnboardingDataInput8dOneBottomsheet(),
    );
  }
}

class KhichiqOnboardingDataInput8dOneBottomsheetState
    extends State<KhichiqOnboardingDataInput8dOneBottomsheet> {
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
        padding: EdgeInsets.fromLTRB(16.h, 23.v, 16.h, 24.v),
        decoration: AppDecoration.outlineGray300011,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgHttpsLottief,
              height: 76.adaptSize,
              width: 76.adaptSize,
            ),
            SizedBox(height: 20.v),
            Text(
              "msg_referral_code_applied".tr,
              style: CustomTextStyles.titleMedium18,
            ),
            SizedBox(height: 40.v),
            CustomElevatedButton(
              text: "lbl_awesome_next".tr,
            ),
            SizedBox(height: 10.v),
          ],
        ),
      ),
    );
  }
}
