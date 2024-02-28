import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_title_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_title.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_seven.dart';import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:vtracku_s_application6/widgets/custom_outlined_button.dart';import 'models/khichiq_onboarding_data_input_eight_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_onboarding_data_input_eight_provider.dart';import 'package:vtracku_s_application6/presentation/khichiq_onboarding_data_input_8d_bottomsheet/khichiq_onboarding_data_input_8d_bottomsheet.dart';class KhichiqOnboardingDataInputEightScreen extends StatefulWidget {const KhichiqOnboardingDataInputEightScreen({Key? key}) : super(key: key);

@override KhichiqOnboardingDataInputEightScreenState createState() =>  KhichiqOnboardingDataInputEightScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqOnboardingDataInputEightProvider(), child: KhichiqOnboardingDataInputEightScreen()); } 
 }
class KhichiqOnboardingDataInputEightScreenState extends State<KhichiqOnboardingDataInputEightScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 16.v), child: Column(children: [SizedBox(height: 40.v), Expanded(child: SingleChildScrollView(child: _buildKhichiqOnboarding(context)))])), bottomNavigationBar: _buildBOTTOMNAV(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgNounStar6104571Primary), AppbarTitle(text: "lbl_khichiq".tr, margin: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 5.v))])), actions: [AppbarSubtitleSeven(text: "msg_proudly_made_in".tr, margin: EdgeInsets.fromLTRB(12.h, 26.v, 59.h, 17.v))]); } 
/// Section Widget
Widget _buildKhichiqOnboarding(BuildContext context) { return Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(children: [Container(height: 70.adaptSize, width: 70.adaptSize, padding: EdgeInsets.symmetric(horizontal: 4.h), decoration: AppDecoration.fillAmberA.copyWith(borderRadius: BorderRadiusStyle.circleBorder35), child: CustomImageView(imagePath: ImageConstant.imgPlay, height: 70.v, width: 60.h, alignment: Alignment.center)), Padding(padding: EdgeInsets.only(left: 16.h, top: 12.v, bottom: 12.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_good_morning".tr, style: CustomTextStyles.titleSmallGray700), SizedBox(height: 3.v), Text("lbl_chinmay".tr, style: CustomTextStyles.titleMedium18)]))]), SizedBox(height: 42.v), Text("msg_wait_got_a_referral".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 21.v), Text("lbl_enter_here".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), Selector<KhichiqOnboardingDataInputEightProvider, TextEditingController?>(selector: (context, provider) => provider.kHIQINVController, builder: (context, kHIQINVController, child) {return CustomTextFormField(controller: kHIQINVController, hintText: "lbl_khiqinv00001".tr, textInputAction: TextInputAction.done);})])); } 
/// Section Widget
Widget _buildBOTTOMNAV(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), decoration: AppDecoration.outlineGray30001, child: Column(mainAxisSize: MainAxisSize.min, children: [CustomElevatedButton(text: "lbl_verify".tr, onPressed: () {onTapVERIFY(context);}), CustomOutlinedButton(text: "lbl_skip_this".tr, margin: EdgeInsets.only(top: 12.v), onPressed: () {onTapSKIPTHIS(context);})])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 

/// Displays a bottom sheet widget using the [showModalBottomSheet] method 
/// of the [Scaffold] class with [isScrollControlled] set to true.
///
/// The bottom sheet is built using the [KhichiqOnboardingDataInput8dBottomsheet]
/// class and the [builder] method of the bottom sheet is passed the
/// [BuildContext] object.
onTapVERIFY(BuildContext context) { showModalBottomSheet(context: NavigatorService.navigatorKey.currentContext!, builder: (_)=>KhichiqOnboardingDataInput8dBottomsheet.builder(NavigatorService.navigatorKey.currentContext!),isScrollControlled: true); } 
/// Navigates to the khichiqHomeSevenScreen when the action is triggered.
onTapSKIPTHIS(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqHomeSevenScreen, ); } 
 }
