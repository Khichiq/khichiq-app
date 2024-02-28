import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';import 'package:vtracku_s_application6/widgets/custom_drop_down.dart';import 'models/khichiq_leads_create_new_hifi_nine_model.dart';import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';import 'package:vtracku_s_application6/widgets/custom_icon_button.dart';import 'models/tabs24_item_model.dart';import '../khichiq_leads_create_new_hifi_nine_screen/widgets/tabs24_item_widget.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_create_new_hifi_nine_provider.dart';class KhichiqLeadsCreateNewHifiNineScreen extends StatefulWidget {const KhichiqLeadsCreateNewHifiNineScreen({Key? key}) : super(key: key);

@override KhichiqLeadsCreateNewHifiNineScreenState createState() =>  KhichiqLeadsCreateNewHifiNineScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsCreateNewHifiNineProvider(), child: KhichiqLeadsCreateNewHifiNineScreen()); } 
 }
class KhichiqLeadsCreateNewHifiNineScreenState extends State<KhichiqLeadsCreateNewHifiNineScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 26.v), Expanded(child: SingleChildScrollView(child: Padding(padding: EdgeInsets.only(bottom: 5.v), child: Column(children: [_buildMainDetails(context), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("msg_current_lead_status".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 7.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewHifiNineProvider, KhichiqLeadsCreateNewHifiNineModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewHifiNineModelObj, builder: (context, khichiqLeadsCreateNewHifiNineModelObj, child) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray900, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_new2".tr, items: khichiqLeadsCreateNewHifiNineModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewHifiNineProvider>().onSelected(value);});})), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_name_of_contact2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: " "), TextSpan(text: "lbl2".tr, style: CustomTextStyles.labelLargeffff0000)]), textAlign: TextAlign.left))), SizedBox(height: 7.v), _buildName(context), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_mobile_numbe".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl_r".tr, style: CustomTextStyles.labelLargeff333333), TextSpan(text: "lbl3".tr, style: CustomTextStyles.labelLargeffff0000)]), textAlign: TextAlign.left))), SizedBox(height: 7.v), _buildMobileNumber(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomIconButton(height: 18.adaptSize, width: 18.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgFloatingIconPrimary)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_add_another_number".tr, style: CustomTextStyles.titleSmallPrimary))]))), SizedBox(height: 11.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_add_email_id".tr, style: CustomTextStyles.titleSmallPrimary))]))), SizedBox(height: 23.v), Container(height: 8.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 23.v), _buildEventDetails1(context), SizedBox(height: 12.v), _buildFrame(context), SizedBox(height: 24.v), Container(height: 8.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 23.v), _buildAdditionalDetails(context), SizedBox(height: 10.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_lead_source2".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 7.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewHifiNineProvider, KhichiqLeadsCreateNewHifiNineModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewHifiNineModelObj, builder: (context, khichiqLeadsCreateNewHifiNineModelObj, child) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdownBlueGray900, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_select_source".tr, items: khichiqLeadsCreateNewHifiNineModelObj?.dropdownItemList5 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewHifiNineProvider>().onSelected5(value);});})), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_next_task".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 7.v), _buildFrameSeventyFive(context), SizedBox(height: 17.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_due_by".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 6.v), _buildAugTwentyThree(context), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_notes".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 9.v), _buildTypehere(context)]))))])), bottomNavigationBar: _buildBOTTOMNAV(context))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 64.v, leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 24.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitle(text: "lbl_create_new_lead".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgCancel, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v))], styleType: Style.bgOutline_2); } 
/// Section Widget
Widget _buildMainDetails(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 20.h, right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_main_details".tr, style: CustomTextStyles.titleSmallPrimary), CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(top: 2.v))])); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewHifiNineProvider, TextEditingController?>(selector: (context, provider) => provider.nameController, builder: (context, nameController, child) {return CustomTextFormField(controller: nameController, hintText: "msg_bhagyashree_mehta".tr);})); } 
/// Section Widget
Widget _buildMobileNumber(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewHifiNineProvider, TextEditingController?>(selector: (context, provider) => provider.mobileNumberController, builder: (context, mobileNumberController, child) {return CustomTextFormField(controller: mobileNumberController, hintText: "msg_e_g_98200_98200".tr, hintStyle: CustomTextStyles.titleMediumGray400);})); } 
/// Section Widget
Widget _buildEventDetails(BuildContext context) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_event_details".tr, style: CustomTextStyles.titleSmallPrimary)), SizedBox(height: 12.v), Consumer<KhichiqLeadsCreateNewHifiNineProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(provider.khichiqLeadsCreateNewHifiNineModelObj.tabs24ItemList.length, (index) {Tabs24ItemModel model = provider.khichiqLeadsCreateNewHifiNineModelObj.tabs24ItemList[index]; return Tabs24ItemWidget(model, onSelectedChipView1: (value) {provider.onSelectedChipView1(index, value);});}));})]); } 
/// Section Widget
Widget _buildEventDetails1(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [_buildEventDetails(context), CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(top: 2.v, bottom: 44.v))])); } 
/// Section Widget
Widget _buildTypeOfEvent(BuildContext context) { return Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_type_of_event2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl8".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 6.v), Selector<KhichiqLeadsCreateNewHifiNineProvider, KhichiqLeadsCreateNewHifiNineModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewHifiNineModelObj, builder: (context, khichiqLeadsCreateNewHifiNineModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_select2".tr, items: khichiqLeadsCreateNewHifiNineModelObj?.dropdownItemList2 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewHifiNineProvider>().onSelected2(value);});})])); } 
/// Section Widget
Widget _buildINPUTLABEL(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildTypeOfEvent(context), Padding(padding: EdgeInsets.only(left: 12.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_event_date2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl2".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Container(height: 48.v, width: 153.h, padding: EdgeInsets.all(11.h), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: CustomImageView(imagePath: ImageConstant.imgCalender, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.centerRight))]))])); } 
/// Section Widget
Widget _buildStartTimeapprox(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 12.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_start_time_approx3".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 6.v), Selector<KhichiqLeadsCreateNewHifiNineProvider, KhichiqLeadsCreateNewHifiNineModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewHifiNineModelObj, builder: (context, khichiqLeadsCreateNewHifiNineModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_8_00_am".tr, items: khichiqLeadsCreateNewHifiNineModelObj?.dropdownItemList4 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewHifiNineProvider>().onSelected4(value);});})])); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(vertical: 7.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [Selector<KhichiqLeadsCreateNewHifiNineProvider, KhichiqLeadsCreateNewHifiNineModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewHifiNineModelObj, builder: (context, khichiqLeadsCreateNewHifiNineModelObj, child) {return CustomDropDown(icon: Container(margin: EdgeInsets.only(left: 30.h, right: 10.h), child: CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary16x16, height: 16.adaptSize, width: 16.adaptSize)), hintText: "lbl_event_info".tr, hintStyle: theme.textTheme.bodySmall!, items: khichiqLeadsCreateNewHifiNineModelObj?.dropdownItemList1 ?? [], contentPadding: EdgeInsets.only(left: 10.h, top: 1.v, bottom: 1.v), borderDecoration: DropDownStyleHelper.underLineGray, filled: false, onChanged: (value) {context.read<KhichiqLeadsCreateNewHifiNineProvider>().onSelected1(value);});}), SizedBox(height: 13.v), _buildINPUTLABEL(context), SizedBox(height: 11.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("msg_event_duration_approx2".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 6.v), Selector<KhichiqLeadsCreateNewHifiNineProvider, KhichiqLeadsCreateNewHifiNineModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewHifiNineModelObj, builder: (context, khichiqLeadsCreateNewHifiNineModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(11.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_half_day_8_hrs".tr, items: khichiqLeadsCreateNewHifiNineModelObj?.dropdownItemList3 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewHifiNineProvider>().onSelected3(value);});})]), _buildStartTimeapprox(context)])), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_add_location".tr, style: CustomTextStyles.titleSmallPrimary))]))), SizedBox(height: 5.v)])); } 
/// Section Widget
Widget _buildAdditionalDetails(BuildContext context) { return GestureDetector(onTap: () {onTapAdditionalDetails(context);}, child: Padding(padding: EdgeInsets.only(left: 19.h, right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_additional_details".tr, style: CustomTextStyles.titleSmallPrimary), CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(top: 2.v))]))); } 
/// Section Widget
Widget _buildFrameSeventyFive(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, color: appTheme.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.indigo100.withOpacity(0.5), width: 1.h), borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 63.v, width: 343.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.center, child: Container(height: 48.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray50, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.indigo100, width: 1.h)))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 12.h, bottom: 11.v), child: Text("msg_take_confirmation".tr, style: theme.textTheme.titleMedium)))]))); } 
/// Section Widget
Widget _buildAugTwentyThree(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_16_aug_23".tr, style: theme.textTheme.titleMedium)), CustomImageView(imagePath: ImageConstant.imgCalender, height: 24.adaptSize, width: 24.adaptSize)])); } 
/// Section Widget
Widget _buildTypehere(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewHifiNineProvider, TextEditingController?>(selector: (context, provider) => provider.typehereController, builder: (context, typehereController, child) {return CustomTextFormField(controller: typehereController, hintText: "lbl_type_here".tr, hintStyle: CustomTextStyles.bodyLargeGray400, textInputAction: TextInputAction.done, maxLines: 5, contentPadding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 23.v), borderDecoration: TextFormFieldStyleHelper.outlineIndigoTL8);})); } 
/// Section Widget
Widget _buildSAVELEAD(BuildContext context) { return CustomElevatedButton(text: "lbl_save_lead".tr); } 
/// Section Widget
Widget _buildBOTTOMNAV(BuildContext context) { return Container(margin: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 34.v), decoration: AppDecoration.outlineIndigo1005, child: _buildSAVELEAD(context)); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the khichiqLeadsCreateNewHifiTenScreen when the action is triggered.
onTapAdditionalDetails(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqLeadsCreateNewHifiTenScreen, ); } 
 }
