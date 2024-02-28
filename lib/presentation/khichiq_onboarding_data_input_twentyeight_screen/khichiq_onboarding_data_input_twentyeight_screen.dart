import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_title_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_title.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_seven.dart';import 'widgets/khichiqonboardingdatainputtwen_item_widget.dart';import 'models/khichiqonboardingdatainputtwen_item_model.dart';import 'models/khichiq_onboarding_data_input_twentyeight_model.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_onboarding_data_input_twentyeight_provider.dart';class KhichiqOnboardingDataInputTwentyeightScreen extends StatefulWidget {const KhichiqOnboardingDataInputTwentyeightScreen({Key? key}) : super(key: key);

@override KhichiqOnboardingDataInputTwentyeightScreenState createState() =>  KhichiqOnboardingDataInputTwentyeightScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqOnboardingDataInputTwentyeightProvider(), child: KhichiqOnboardingDataInputTwentyeightScreen()); } 
 }
class KhichiqOnboardingDataInputTwentyeightScreenState extends State<KhichiqOnboardingDataInputTwentyeightScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: Container(width: double.maxFinite, padding: EdgeInsets.symmetric(vertical: 16.v), child: Column(children: [SizedBox(height: 42.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [_buildSelectYourPrimary(context), SizedBox(height: 5.v), Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_you_can_select_all".tr, style: theme.textTheme.bodyMedium)), SizedBox(height: 34.v), _buildKhichiqOnboardingDataInputTwen(context), SizedBox(height: 11.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [Text("lbl_show_more".tr, style: CustomTextStyles.titleSmallPrimary), CustomImageView(imagePath: ImageConstant.imgArrowUp, height: 16.adaptSize, width: 16.adaptSize, margin: EdgeInsets.only(left: 8.h))])))]))))])), bottomNavigationBar: _buildBOTTOMNAV(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 20.v, bottom: 20.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 16.h), child: Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgNounStar6104571Primary), AppbarTitle(text: "lbl_khichiq".tr, margin: EdgeInsets.only(left: 10.h, top: 7.v, bottom: 5.v))])), actions: [AppbarSubtitleSeven(text: "msg_proudly_made_in".tr, margin: EdgeInsets.fromLTRB(12.h, 26.v, 59.h, 17.v))]); } 
/// Section Widget
Widget _buildSelectYourPrimary(BuildContext context) { return Align(alignment: Alignment.center, child: Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("msg_select_your_primary".tr, style: CustomTextStyles.titleMedium18), Padding(padding: EdgeInsets.only(left: 26.h, top: 7.v, bottom: 2.v), child: Text("lbl_step_2_of_2".tr, style: CustomTextStyles.labelMediumGray700))]))); } 
/// Section Widget
Widget _buildKhichiqOnboardingDataInputTwen(BuildContext context) { return Consumer<KhichiqOnboardingDataInputTwentyeightProvider>(builder: (context, provider, child) {return ListView.separated(physics: NeverScrollableScrollPhysics(), shrinkWrap: true, separatorBuilder: (context, index) {return Padding(padding: EdgeInsets.symmetric(vertical: 5.5.v), child: SizedBox(width: double.maxFinite, child: Divider(height: 1.v, thickness: 1.v, color: appTheme.gray200)));}, itemCount: provider.khichiqOnboardingDataInputTwentyeightModelObj.khichiqonboardingdatainputtwenItemList.length, itemBuilder: (context, index) {KhichiqonboardingdatainputtwenItemModel model = provider.khichiqOnboardingDataInputTwentyeightModelObj.khichiqonboardingdatainputtwenItemList[index]; return KhichiqonboardingdatainputtwenItemWidget(model);});}); } 
/// Section Widget
Widget _buildBOTTOMNAV(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), decoration: AppDecoration.outlineGray30001, child: CustomElevatedButton(text: "lbl_select".tr)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
 }
