import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_title_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_two.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_five.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';import 'package:vtracku_s_application6/widgets/custom_icon_button.dart';import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';import 'package:vtracku_s_application6/widgets/custom_drop_down.dart';import 'models/khichiq_leads_edit_thirtythree_model.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_edit_thirtythree_provider.dart';class KhichiqLeadsEditThirtythreeScreen extends StatefulWidget {const KhichiqLeadsEditThirtythreeScreen({Key? key}) : super(key: key);

@override KhichiqLeadsEditThirtythreeScreenState createState() =>  KhichiqLeadsEditThirtythreeScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsEditThirtythreeProvider(), child: KhichiqLeadsEditThirtythreeScreen()); } 
 }
class KhichiqLeadsEditThirtythreeScreenState extends State<KhichiqLeadsEditThirtythreeScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 24.v), Expanded(child: SingleChildScrollView(child: Container(margin: EdgeInsets.only(bottom: 5.v), padding: EdgeInsets.symmetric(horizontal: 16.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_lead_details".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildFrameSeventyFour(context), SizedBox(height: 24.v), _buildNextTask(context), SizedBox(height: 6.v), Selector<KhichiqLeadsEditThirtythreeProvider, TextEditingController?>(selector: (context, provider) => provider.followuponthController, builder: (context, followuponthController, child) {return CustomTextFormField(controller: followuponthController, hintText: "msg_followup_on_13th".tr, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 21.v), borderDecoration: TextFormFieldStyleHelper.outlineIndigoTL8);}), SizedBox(height: 24.v), Text("lbl_lead_timeline".tr, style: theme.textTheme.titleSmall), SizedBox(height: 7.v), _buildFrameSeventyFour1(context), SizedBox(height: 24.v), Text("lbl_notes".tr, style: theme.textTheme.titleSmall), SizedBox(height: 9.v), Selector<KhichiqLeadsEditThirtythreeProvider, TextEditingController?>(selector: (context, provider) => provider.typehereController, builder: (context, typehereController, child) {return CustomTextFormField(controller: typehereController, hintText: "lbl_type_here".tr, hintStyle: CustomTextStyles.bodyLargeGray400, textInputAction: TextInputAction.done, maxLines: 5, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v), borderDecoration: TextFormFieldStyleHelper.outlineIndigoTL8);}), SizedBox(height: 12.v), Row(children: [CustomImageView(imagePath: ImageConstant.imgArchive, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 6.h), child: Text("msg_archive_this_order".tr, style: CustomTextStyles.labelLargePrimary))])]))))])), bottomNavigationBar: _buildBOTTOMNAV(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 64.v, leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 24.v), onTap: () {onTapArrowLeft(context);}), title: Padding(padding: EdgeInsets.only(left: 16.h), child: Column(children: [Row(children: [AppbarTitleImage(imagePath: ImageConstant.imgWeddingIcon, margin: EdgeInsets.only(top: 3.v, bottom: 6.v)), Padding(padding: EdgeInsets.only(left: 10.h), child: Column(children: [AppbarSubtitleTwo(text: "msg_siddheshwar_shreyasi".tr), SizedBox(height: 1.v), AppbarSubtitleFive(text: "lbl_new_lead".tr.toUpperCase(), margin: EdgeInsets.only(right: 140.h))]))])])), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgEdit, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 20.v), onTap: () {onTapEDIT(context);})], styleType: Style.bgOutline); } 
/// Section Widget
Widget _buildFrameSeventyFour(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 11.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: _buildLeadSource(context, leadSource: "lbl_main_event".tr, call: "lbl_19_aug_23".tr)), SizedBox(height: 8.v), Divider(), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: _buildLeadSource(context, leadSource: "lbl_lead_source".tr, call: "lbl_call2".tr)), SizedBox(height: 9.v), Divider(), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: _buildLeadSource(context, leadSource: "lbl_platform".tr, call: "lbl7".tr)), SizedBox(height: 8.v), Divider(), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("msg_siddheshwar_9820098200".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 5.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("msg_siddheshwar_anant_yahoo_co_in".tr, style: theme.textTheme.bodyMedium))), SizedBox(height: 14.v), Padding(padding: EdgeInsets.symmetric(horizontal: 53.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGmail, height: 20.adaptSize, width: 20.adaptSize), Spacer(flex: 25), SizedBox(height: 18.v, child: VerticalDivider(width: 1.h, thickness: 1.v)), Spacer(flex: 24), CustomImageView(imagePath: ImageConstant.imgSocial, height: 20.adaptSize, width: 20.adaptSize), Spacer(flex: 25), SizedBox(height: 18.v, child: VerticalDivider(width: 1.h, thickness: 1.v)), Spacer(flex: 24), CustomIconButton(height: 20.adaptSize, width: 20.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgCall))]))])); } 
/// Section Widget
Widget _buildNextTask(BuildContext context) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_next_task".tr, style: theme.textTheme.titleSmall)), Text("msg_due_by_28_feb_23".tr, style: CustomTextStyles.bodyMediumOrange600)]); } 
/// Section Widget
Widget _buildFrameSeventyFour1(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 11.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [CustomImageView(imagePath: ImageConstant.imgGroup303, height: 102.v, width: 18.h, margin: EdgeInsets.only(bottom: 1.v)), Expanded(child: Padding(padding: EdgeInsets.only(left: 22.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 12.h), child: _buildQuoteSent(context, quoteSent: "lbl_lead_received".tr, augTwentyThree: "lbl_19_aug_23".tr)), SizedBox(height: 10.v), Divider(), SizedBox(height: 11.v), Padding(padding: EdgeInsets.only(right: 12.h), child: _buildQuoteSent(context, quoteSent: "lbl_quote_sent2".tr, augTwentyThree: "lbl_19_aug_23".tr)), SizedBox(height: 10.v), Divider(), SizedBox(height: 9.v), Padding(padding: EdgeInsets.only(right: 12.h), child: _buildQuoteSent(context, quoteSent: "msg_lead_converted".tr, augTwentyThree: "lbl_19_aug_23".tr))])))])), SizedBox(height: 22.v), Divider(), SizedBox(height: 9.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("msg_current_lead_status".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 7.v), Padding(padding: EdgeInsets.only(left: 12.h, right: 13.h), child: Selector<KhichiqLeadsEditThirtythreeProvider, KhichiqLeadsEditThirtythreeModel?>(selector: (context, provider) => provider.khichiqLeadsEditThirtythreeModelObj, builder: (context, khichiqLeadsEditThirtythreeModelObj, child) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_lead_received2".tr, items: khichiqLeadsEditThirtythreeModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<KhichiqLeadsEditThirtythreeProvider>().onSelected(value);});}))])); } 
/// Section Widget
Widget _buildBOTTOMNAV(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), decoration: AppDecoration.outlineGray30001, child: CustomElevatedButton(text: "msg_convert_this_lead".tr)); } 
/// Common widget
Widget _buildLeadSource(BuildContext context, {required String leadSource, required String call, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(leadSource, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray700)), Text(call, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray900))]); } 
/// Common widget
Widget _buildQuoteSent(BuildContext context, {required String quoteSent, required String augTwentyThree, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text(quoteSent, style: theme.textTheme.bodyMedium!.copyWith(color: appTheme.gray700))), Text(augTwentyThree, style: theme.textTheme.titleSmall!.copyWith(color: appTheme.blueGray900))]); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the khichiqLeadsCreateNewHifiElevenScreen when the action is triggered.
onTapEDIT(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqLeadsCreateNewHifiElevenScreen, ); } 
 }
