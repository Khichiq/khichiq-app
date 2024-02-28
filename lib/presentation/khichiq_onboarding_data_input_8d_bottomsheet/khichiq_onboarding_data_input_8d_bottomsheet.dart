import 'package:vtracku_s_application6/widgets/custom_icon_button.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'models/khichiq_onboarding_data_input_8d_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_onboarding_data_input_8d_provider.dart';class KhichiqOnboardingDataInput8dBottomsheet extends StatefulWidget {const KhichiqOnboardingDataInput8dBottomsheet({Key? key}) : super(key: key);

@override KhichiqOnboardingDataInput8dBottomsheetState createState() =>  KhichiqOnboardingDataInput8dBottomsheetState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqOnboardingDataInput8dProvider(), child: KhichiqOnboardingDataInput8dBottomsheet()); } 
 }
class KhichiqOnboardingDataInput8dBottomsheetState extends State<KhichiqOnboardingDataInput8dBottomsheet> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return _buildScrollView(context); } 
/// Section Widget
Widget _buildScrollView(BuildContext context) { return SingleChildScrollView(child: Container(padding: EdgeInsets.fromLTRB(16.h, 16.v, 16.h, 17.v), decoration: AppDecoration.outlineGray300011, child: Column(mainAxisSize: MainAxisSize.min, children: [Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 28.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Container(height: 80.adaptSize, width: 80.adaptSize, margin: EdgeInsets.only(top: 7.v), padding: EdgeInsets.all(10.h), decoration: AppDecoration.fillGreen.copyWith(borderRadius: BorderRadiusStyle.circleBorder40), child: CustomIconButton(height: 60.adaptSize, width: 60.adaptSize, padding: EdgeInsets.all(14.h), decoration: IconButtonStyleHelper.fillGreen, alignment: Alignment.center, child: CustomImageView(imagePath: ImageConstant.imgCheckmark))), CustomImageView(imagePath: ImageConstant.imgHttpsLottief, height: 87.adaptSize, width: 87.adaptSize, margin: EdgeInsets.only(left: 16.h))]))), SizedBox(height: 16.v), Text("msg_referral_code_applied".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 40.v), CustomElevatedButton(text: "lbl_awesome_next".tr, onPressed: () {onTapAWESOMENEXT(context);}), SizedBox(height: 17.v)]))); } 
/// Navigates to the khichiqHomeSevenScreen when the action is triggered.
onTapAWESOMENEXT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqHomeSevenScreen, ); } 
 }
