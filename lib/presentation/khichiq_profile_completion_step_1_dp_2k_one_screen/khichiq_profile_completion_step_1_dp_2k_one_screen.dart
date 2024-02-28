import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_title_circleimage.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_two.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';import 'package:vtracku_s_application6/core/utils/validation_functions.dart';import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'models/khichiq_profile_completion_step_1_dp_2k_one_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_profile_completion_step_1_dp_2k_one_provider.dart';class KhichiqProfileCompletionStep1Dp2kOneScreen extends StatefulWidget {const KhichiqProfileCompletionStep1Dp2kOneScreen({Key? key}) : super(key: key);

@override KhichiqProfileCompletionStep1Dp2kOneScreenState createState() =>  KhichiqProfileCompletionStep1Dp2kOneScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqProfileCompletionStep1Dp2kOneProvider(), child: KhichiqProfileCompletionStep1Dp2kOneScreen()); } 
 }

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1Dp2kOneScreenState extends State<KhichiqProfileCompletionStep1Dp2kOneScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [SizedBox(height: 48.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildFour(context, enterInstagram: "msg_update_business".tr, cONNECT: "lbl_step_1_of_2".tr), SizedBox(height: 5.v), Text("msg_get_more_exposure".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 22.v), Text("msg_verify_your_email".tr, style: theme.textTheme.labelLarge), SizedBox(height: 6.v), _buildEmail(context), SizedBox(height: 22.v), Text("lbl_website".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), _buildFive(context), SizedBox(height: 24.v), Text("lbl_instagram".tr, style: theme.textTheme.labelLarge), SizedBox(height: 5.v), _buildFour(context, enterInstagram: "msg_enter_instagram".tr, cONNECT: "lbl_connect".tr), SizedBox(height: 164.v), _buildProfilePictureUpdated(context)]))))]))), bottomNavigationBar: _buildBOTTOMNAV(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [AppbarTitleCircleimage(imagePath: ImageConstant.imgBaa045e1A455448x48), AppbarSubtitleTwo(text: "lbl_hi_chinmay".tr, margin: EdgeInsets.only(left: 18.h, top: 14.v, bottom: 10.v))])), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgCancel, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v))]); } 
/// Section Widget
Widget _buildEmail(BuildContext context) { return Selector<KhichiqProfileCompletionStep1Dp2kOneProvider, TextEditingController?>(selector: (context, provider) => provider.emailController, builder: (context, emailController, child) {return CustomTextFormField(controller: emailController, hintText: "msg_chinmay_kale_sys_com".tr, textInputType: TextInputType.emailAddress, validator: (value) {if (value == null || (!isValidEmail(value, isRequired: true))) {return "err_msg_please_enter_valid_email".tr;} return null;});}); } 
/// Section Widget
Widget _buildFive(BuildContext context) { return Selector<KhichiqProfileCompletionStep1Dp2kOneProvider, TextEditingController?>(selector: (context, provider) => provider.fiveController, builder: (context, fiveController, child) {return CustomTextFormField(controller: fiveController, hintText: "msg_enter_instagram".tr, hintStyle: CustomTextStyles.titleMediumGray400, textInputAction: TextInputAction.done);}); } 
/// Section Widget
Widget _buildProfilePictureUpdated(BuildContext context) { return CustomElevatedButton(height: 38.v, text: "msg_profile_picture".tr, buttonStyle: CustomButtonStyles.fillOnPrimary, buttonTextStyle: CustomTextStyles.bodyMediumWhiteA700); } 
/// Section Widget
Widget _buildNEXT(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNEXT(context);}); } 
/// Section Widget
Widget _buildBOTTOMNAV(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), decoration: AppDecoration.outlineGray30001, child: _buildNEXT(context)); } 
/// Common widget
Widget _buildFour(BuildContext context, {required String enterInstagram, required String cONNECT, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text(enterInstagram, style: CustomTextStyles.titleMediumGray400.copyWith(color: appTheme.gray400))), Padding(padding: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Text(cONNECT, style: CustomTextStyles.titleSmallPrimary.copyWith(color: theme.colorScheme.primary)))])); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the khichiqProfileCompletionStep2ChargesTwoScreen when the action is triggered.
onTapNEXT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqProfileCompletionStep2ChargesTwoScreen, ); } 
 }
