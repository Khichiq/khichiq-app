import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_two.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_three.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';import 'package:vtracku_s_application6/widgets/custom_pin_code_text_field.dart';import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';import 'package:vtracku_s_application6/core/utils/validation_functions.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'models/khichiq_profile_completion_step_1_otp_2b_model.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_profile_completion_step_1_otp_2b_provider.dart';class KhichiqProfileCompletionStep1Otp2bScreen extends StatefulWidget {const KhichiqProfileCompletionStep1Otp2bScreen({Key? key}) : super(key: key);

@override KhichiqProfileCompletionStep1Otp2bScreenState createState() =>  KhichiqProfileCompletionStep1Otp2bScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqProfileCompletionStep1Otp2bProvider(), child: KhichiqProfileCompletionStep1Otp2bScreen()); } 
 }

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1Otp2bScreenState extends State<KhichiqProfileCompletionStep1Otp2bScreen> {GlobalKey<FormState> _formKey = GlobalKey<FormState>();

@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: Form(key: _formKey, child: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 10.v), child: Column(children: [SizedBox(height: 48.v), Expanded(child: SingleChildScrollView(child: _buildKhichiqProfile(context)))]))), bottomNavigationBar: _buildBOTTOMNAV(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 16.h), child: Column(children: [Row(children: [Container(padding: EdgeInsets.symmetric(horizontal: 3.h), decoration: AppDecoration.fillAmberA.copyWith(borderRadius: BorderRadiusStyle.circleBorder24), child: AppbarImage(imagePath: ImageConstant.imgPlay)), Padding(padding: EdgeInsets.only(left: 18.h, top: 6.v, bottom: 3.v), child: Column(children: [AppbarSubtitleTwo(text: "lbl_hi_chinmay".tr, margin: EdgeInsets.only(right: 22.h)), AppbarSubtitleThree(text: "msg_upload_profile_picture".tr)]))])])), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgCancel, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v))]); } 
/// Section Widget
Widget _buildOtpView(BuildContext context) { return Selector<KhichiqProfileCompletionStep1Otp2bProvider, TextEditingController?>(selector: (context, provider) => provider.otpController, builder: (context, otpController, child) {return CustomPinCodeTextField(context: context, controller: otpController, onChanged: (value) {otpController?.text = value;});}); } 
/// Section Widget
Widget _buildFortyOne(BuildContext context) { return Selector<KhichiqProfileCompletionStep1Otp2bProvider, TextEditingController?>(selector: (context, provider) => provider.fortyOneController, builder: (context, fortyOneController, child) {return CustomTextFormField(controller: fortyOneController, hintText: "msg_enter_instagram".tr, hintStyle: CustomTextStyles.titleMediumGray400);}); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Selector<KhichiqProfileCompletionStep1Otp2bProvider, TextEditingController?>(selector: (context, provider) => provider.nameController, builder: (context, nameController, child) {return CustomTextFormField(controller: nameController, hintText: "msg_instagram_com_enter".tr, hintStyle: CustomTextStyles.titleMediumGray400, textInputAction: TextInputAction.done, validator: (value) {if (!isText(value)) {return "err_msg_please_enter_valid_text".tr;} return null;});}); } 
/// Section Widget
Widget _buildKhichiqProfile(BuildContext context) { return Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_update_business".tr, style: CustomTextStyles.titleMedium18), Padding(padding: EdgeInsets.only(top: 7.v, bottom: 2.v), child: Text("lbl_step_1_of_2".tr, style: CustomTextStyles.labelMediumGray700))]), SizedBox(height: 5.v), Text("msg_get_more_exposure".tr, style: theme.textTheme.bodyMedium), SizedBox(height: 21.v), Text("lbl_enter_otp".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), _buildOtpView(context), SizedBox(height: 13.v), Text("msg_an_otp_has_been".tr, style: CustomTextStyles.bodyMediumPrimary), SizedBox(height: 21.v), Text("lbl_website".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), _buildFortyOne(context), SizedBox(height: 24.v), Text("lbl_instagram".tr, style: theme.textTheme.labelLarge), SizedBox(height: 5.v), _buildName(context)])); } 
/// Section Widget
Widget _buildNEXT(BuildContext context) { return CustomElevatedButton(text: "lbl_next".tr, onPressed: () {onTapNEXT(context);}); } 
/// Section Widget
Widget _buildBOTTOMNAV(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), decoration: AppDecoration.outlineGray30001, child: _buildNEXT(context)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the khichiqProfileCompletionStep1EmailVerified2cScreen when the action is triggered.
onTapNEXT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqProfileCompletionStep1EmailVerified2cScreen, ); } 
 }
