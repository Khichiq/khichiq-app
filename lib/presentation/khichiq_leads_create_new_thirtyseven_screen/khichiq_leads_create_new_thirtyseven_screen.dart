import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_image.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_one.dart';import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';import 'package:vtracku_s_application6/widgets/custom_drop_down.dart';import 'models/khichiq_leads_create_new_thirtyseven_model.dart';import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';import 'package:vtracku_s_application6/widgets/custom_icon_button.dart';import 'models/tabs8_item_model.dart';import '../khichiq_leads_create_new_thirtyseven_screen/widgets/tabs8_item_widget.dart';import 'package:vtracku_s_application6/widgets/custom_outlined_button.dart';import 'package:calendar_date_picker2/calendar_date_picker2.dart';import 'package:vtracku_s_application6/widgets/custom_checkbox_button.dart';import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';import 'package:flutter/material.dart';import 'package:vtracku_s_application6/core/app_export.dart';import 'provider/khichiq_leads_create_new_thirtyseven_provider.dart';class KhichiqLeadsCreateNewThirtysevenScreen extends StatefulWidget {const KhichiqLeadsCreateNewThirtysevenScreen({Key? key}) : super(key: key);

@override KhichiqLeadsCreateNewThirtysevenScreenState createState() =>  KhichiqLeadsCreateNewThirtysevenScreenState();

static Widget builder(BuildContext context) { return ChangeNotifierProvider(create: (context) => KhichiqLeadsCreateNewThirtysevenProvider(), child: KhichiqLeadsCreateNewThirtysevenScreen()); } 
 }
class KhichiqLeadsCreateNewThirtysevenScreenState extends State<KhichiqLeadsCreateNewThirtysevenScreen> {@override void initState() { super.initState(); } 
@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), body: SizedBox(width: SizeUtils.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 26.v), child: Column(children: [_buildMainDetails(context), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_order_type2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl2".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left))), SizedBox(height: 6.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewThirtysevenProvider, KhichiqLeadsCreateNewThirtysevenModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewThirtysevenModelObj, builder: (context, khichiqLeadsCreateNewThirtysevenModelObj, child) {return CustomDropDown(icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 18.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_wedding".tr, items: khichiqLeadsCreateNewThirtysevenModelObj?.dropdownItemList ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().onSelected(value);});})), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_mobile_number_of2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl3".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left))), SizedBox(height: 7.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildAugTwentyThree(context, augTwentyThree: "lbl_98200_98200".tr, cALENDER: ImageConstant.imgContactBook1)), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_name_of_contact".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl3".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left))), SizedBox(height: 7.v), _buildName(context), SizedBox(height: 16.v), _buildINPUTLABEL(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomIconButton(height: 18.adaptSize, width: 18.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgFloatingIconPrimary)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_add_another_number".tr, style: CustomTextStyles.titleSmallPrimary))]))), SizedBox(height: 7.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_add_email_id".tr, style: CustomTextStyles.titleSmallPrimary))]))), SizedBox(height: 16.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_main_date2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl3".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left))), SizedBox(height: 7.v), Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: _buildAugTwentyThree(context, augTwentyThree: "lbl_16_aug_23".tr, cALENDER: ImageConstant.imgCalender)), SizedBox(height: 24.v), Container(height: 8.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 23.v), Padding(padding: EdgeInsets.only(left: 19.h, right: 16.h), child: _buildOrderPayments(context, orderPayments: "lbl_event_details".tr)), SizedBox(height: 12.v), _buildTABS(context), SizedBox(height: 12.v), _buildChaitanyaC1(context), SizedBox(height: 18.v), _buildFrame(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: GestureDetector(onTap: () {onTapArrowUp(context);}, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary18x18, height: 18.adaptSize, width: 18.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_event_top".tr, style: CustomTextStyles.titleSmallPrimary))])))), SizedBox(height: 22.v), Container(height: 8.v, width: double.maxFinite, decoration: BoxDecoration(color: appTheme.whiteA700)), SizedBox(height: 25.v), Padding(padding: EdgeInsets.only(left: 19.h, right: 16.h), child: _buildOrderPayments(context, orderPayments: "lbl_order_payments".tr)), SizedBox(height: 9.v), _buildCREATEORDER1(context), SizedBox(height: 56.v), _buildOtherInfo(context), SizedBox(height: 14.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_next_task".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 8.v), _buildFrameSeventyFive(context), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_due_by".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 8.v), _buildCALENDER(context), SizedBox(height: 18.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Text("lbl_notes".tr, style: theme.textTheme.labelLarge))), SizedBox(height: 10.v), _buildFrame1(context), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("msg_add_client_details".tr, style: CustomTextStyles.titleSmallPrimary))])))]))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 64.v, leadingWidth: 32.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgArrowLeft, margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 24.v), onTap: () {onTapArrowLeft(context);}), centerTitle: true, title: AppbarSubtitleOne(text: "msg_create_new_order".tr), actions: [AppbarTrailingImage(imagePath: ImageConstant.imgCancel, margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.v))], styleType: Style.bgOutline); } 
/// Section Widget
Widget _buildMainDetails(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 20.h, right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_main_details".tr, style: CustomTextStyles.titleSmallPrimary), CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(top: 2.v))])); } 
/// Section Widget
Widget _buildName(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewThirtysevenProvider, TextEditingController?>(selector: (context, provider) => provider.nameController, builder: (context, nameController, child) {return CustomTextFormField(controller: nameController, hintText: "lbl_sanjay".tr);})); } 
/// Section Widget
Widget _buildINPUTLABEL(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_name_of_groom2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl3".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, TextEditingController?>(selector: (context, provider) => provider.nameController1, builder: (context, nameController1, child) {return CustomTextFormField(width: 162.h, controller: nameController1, hintText: "lbl_sanjay".tr);})]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_name_of_bride2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl3".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, TextEditingController?>(selector: (context, provider) => provider.nameController2, builder: (context, nameController2, child) {return CustomTextFormField(width: 162.h, controller: nameController2, hintText: "lbl_pallavi".tr);})])))])); } 
/// Section Widget
Widget _buildTABS(BuildContext context) { return Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 16.h), child: Consumer<KhichiqLeadsCreateNewThirtysevenProvider>(builder: (context, provider, child) {return Wrap(runSpacing: 8.v, spacing: 8.h, children: List<Widget>.generate(provider.khichiqLeadsCreateNewThirtysevenModelObj.tabs8ItemList.length, (index) {Tabs8ItemModel model = provider.khichiqLeadsCreateNewThirtysevenModelObj.tabs8ItemList[index]; return Tabs8ItemWidget(model, onSelectedChipView1: (value) {provider.onSelectedChipView1(index, value);});}));}))); } 
/// Section Widget
Widget _buildChaitanyaC(BuildContext context) { return CustomOutlinedButton(width: 153.h, text: "lbl_chaitanya_c".tr, rightIcon: Container(margin: EdgeInsets.only(left: 7.h), child: CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 24.adaptSize, width: 24.adaptSize)), buttonStyle: CustomButtonStyles.outlineGreenA, buttonTextStyle: theme.textTheme.titleMedium!); } 
/// Section Widget
Widget _buildChaitanyaC1(BuildContext context) { return SizedBox(height: 546.v, width: 344.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(right: 1.h), padding: EdgeInsets.symmetric(vertical: 7.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: _buildEventteam(context, eVENTTEAM: "lbl_event_info".tr)), SizedBox(height: 9.v), Divider(), SizedBox(height: 13.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_event2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl2".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, KhichiqLeadsCreateNewThirtysevenModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewThirtysevenModelObj, builder: (context, khichiqLeadsCreateNewThirtysevenModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(22.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_pre_wedding".tr, items: khichiqLeadsCreateNewThirtysevenModelObj?.dropdownItemList1 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().onSelected1(value);});})]), Padding(padding: EdgeInsets.only(left: 12.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "lbl_event_date2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl2".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 7.v), _buildSankalpK(context, sankalpK: "lbl_23_aug_23".tr, floatingIcon: ImageConstant.imgCalender)]))])), SizedBox(height: 11.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildStartTimeapprox(context, startTimeapprox: "msg_event_duration_approx".tr, time: "lbl_half_day_8_hrs".tr), Padding(padding: EdgeInsets.only(left: 12.h), child: _buildStartTimeapprox(context, startTimeapprox: "msg_start_time_approx".tr, time: "lbl_8_00_am".tr))])), SizedBox(height: 12.v), Align(alignment: Alignment.centerRight, child: Padding(padding: EdgeInsets.only(right: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_add_location".tr, style: CustomTextStyles.titleSmallPrimary))]))), SizedBox(height: 5.v)]))), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(right: 1.h), padding: EdgeInsets.symmetric(vertical: 7.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: _buildEventteam(context, eVENTTEAM: "lbl_event_team".tr)), SizedBox(height: 9.v), Divider(), SizedBox(height: 13.v), Padding(padding: EdgeInsets.symmetric(horizontal: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_event_requirements".tr, style: theme.textTheme.labelLarge), SizedBox(height: 6.v), _buildPhotographer(context, photographer: "lbl_photographer".tr, arrowDown: ImageConstant.imgArrowdown), SizedBox(height: 12.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, KhichiqLeadsCreateNewThirtysevenModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewThirtysevenModelObj, builder: (context, khichiqLeadsCreateNewThirtysevenModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(15.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_videographer".tr, items: khichiqLeadsCreateNewThirtysevenModelObj?.dropdownItemList2 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().onSelected2(value);});}), SizedBox(height: 12.v), _buildPhotographer(context, photographer: "lbl_add_more".tr, arrowDown: ImageConstant.imgArrowUpPrimary)])), Padding(padding: EdgeInsets.only(left: 11.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("msg_select_team_member".tr, style: theme.textTheme.labelLarge), SizedBox(height: 7.v), _buildSankalpK(context, sankalpK: "lbl_sankalp_k".tr, floatingIcon: ImageConstant.imgFloatingIcon), SizedBox(height: 12.v), _buildChaitanyaC(context), SizedBox(height: 12.v), _buildSankalpK(context, sankalpK: "lbl_select2".tr, floatingIcon: ImageConstant.imgPlusGray400)]))])), SizedBox(height: 11.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 13.h), child: Text("msg_you_can_add_invite".tr, style: CustomTextStyles.bodySmallGray500))), SizedBox(height: 6.v)]))), Align(alignment: Alignment.topCenter, child: Consumer<KhichiqLeadsCreateNewThirtysevenProvider>(builder: (context, provider, child) {return Container(height: 283.v, width: 344.h, margin: EdgeInsets.only(top: 122.v), child: CalendarDatePicker2(config: CalendarDatePicker2Config(calendarType: CalendarDatePicker2Type.single, firstDate: DateTime(DateTime.now().year - 5), lastDate: DateTime(DateTime.now().year + 5), centerAlignModePicker: true, firstDayOfWeek: 1, controlsHeight: 19.47, weekdayLabelTextStyle: TextStyle(color: appTheme.gray500, fontFamily: 'Outfit', fontWeight: FontWeight.w500), todayTextStyle: TextStyle(color: appTheme.whiteA700, fontFamily: 'Outfit', fontWeight: FontWeight.w500), controlsTextStyle: TextStyle(color: appTheme.blueGray900, fontFamily: 'Outfit', fontWeight: FontWeight.w500), dayTextStyle: TextStyle(color: appTheme.blueGray900, fontFamily: 'Outfit', fontWeight: FontWeight.w500), weekdayLabels: ["SU", "M", "T", "W", "TH", "F", "S"]), value: provider.selectedDatesFromCalendar1 ?? [], onValueChanged: (dates) {provider.selectedDatesFromCalendar1 = dates;}));}))])); } 
/// Section Widget
Widget _buildMarkasPaid(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 11.h, top: 3.v), child: Column(children: [Align(alignment: Alignment.centerRight, child: Selector<KhichiqLeadsCreateNewThirtysevenProvider, bool?>(selector: (context, provider) => provider.markasPaid, builder: (context, markasPaid, child) {return CustomCheckboxButton(alignment: Alignment.centerRight, text: "lbl_mark_as_paid".tr, value: markasPaid, onChange: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().changeCheckBox1(value);});})), SizedBox(height: 9.v), Container(padding: EdgeInsets.all(11.h), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_5_000_00".tr, style: theme.textTheme.titleMedium))]))])); } 
/// Section Widget
Widget _buildMarkasPaid1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 11.h, top: 5.v), child: Column(children: [Align(alignment: Alignment.centerRight, child: Selector<KhichiqLeadsCreateNewThirtysevenProvider, bool?>(selector: (context, provider) => provider.markasPaid1, builder: (context, markasPaid1, child) {return CustomCheckboxButton(alignment: Alignment.centerRight, text: "lbl_mark_as_paid".tr, value: markasPaid1, onChange: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().changeCheckBox2(value);});})), SizedBox(height: 9.v), Container(padding: EdgeInsets.all(11.h), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisSize: MainAxisSize.max, children: [Padding(padding: EdgeInsets.only(top: 2.v), child: Text("lbl_5_000_00".tr, style: theme.textTheme.titleMedium))]))])); } 
/// Section Widget
Widget _buildMarkasPaid2(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 11.h, top: 3.v), child: Column(children: [Align(alignment: Alignment.centerRight, child: Selector<KhichiqLeadsCreateNewThirtysevenProvider, bool?>(selector: (context, provider) => provider.markasPaid2, builder: (context, markasPaid2, child) {return CustomCheckboxButton(alignment: Alignment.centerRight, text: "lbl_mark_as_paid".tr, value: markasPaid2, onChange: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().changeCheckBox3(value);});})), SizedBox(height: 9.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, TextEditingController?>(selector: (context, provider) => provider.priceController, builder: (context, priceController, child) {return CustomTextFormField(width: 153.h, controller: priceController, hintText: "lbl_5_000_00".tr);})])); } 
/// Section Widget
Widget _buildPaid(BuildContext context) { return Selector<KhichiqLeadsCreateNewThirtysevenProvider, TextEditingController?>(selector: (context, provider) => provider.paidController, builder: (context, paidController, child) {return CustomTextFormField(controller: paidController, hintText: "lbl_paid".tr, hintStyle: theme.textTheme.bodyMedium!, contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 9.v), borderDecoration: TextFormFieldStyleHelper.underLineGray, filled: false);}); } 
/// Section Widget
Widget _buildFrame(BuildContext context) { return Container(margin: EdgeInsets.symmetric(horizontal: 16.h), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 8.v), Padding(padding: EdgeInsets.symmetric(horizontal: 10.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_team_payments".tr, style: theme.textTheme.bodySmall), CustomIconButton(height: 16.adaptSize, width: 16.adaptSize, child: CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary16x16))])), SizedBox(height: 9.v), Divider(), SizedBox(height: 11.v), Padding(padding: EdgeInsets.symmetric(horizontal: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_sankalp_k".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 6.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, KhichiqLeadsCreateNewThirtysevenModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewThirtysevenModelObj, builder: (context, khichiqLeadsCreateNewThirtysevenModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_custom".tr, items: khichiqLeadsCreateNewThirtysevenModelObj?.dropdownItemList3 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().onSelected3(value);});})]), _buildMarkasPaid(context)])), SizedBox(height: 18.v), Divider(), SizedBox(height: 10.v), Padding(padding: EdgeInsets.symmetric(horizontal: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_surbhi_k".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 7.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, KhichiqLeadsCreateNewThirtysevenModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewThirtysevenModelObj, builder: (context, khichiqLeadsCreateNewThirtysevenModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(22.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_defined_fees".tr, items: khichiqLeadsCreateNewThirtysevenModelObj?.dropdownItemList4 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().onSelected4(value);});})]), _buildMarkasPaid1(context)])), SizedBox(height: 18.v), Divider(), SizedBox(height: 11.v), Padding(padding: EdgeInsets.symmetric(horizontal: 13.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text("lbl_swaroop_b".tr, style: CustomTextStyles.titleMedium18), SizedBox(height: 6.v), Selector<KhichiqLeadsCreateNewThirtysevenProvider, KhichiqLeadsCreateNewThirtysevenModel?>(selector: (context, provider) => provider.khichiqLeadsCreateNewThirtysevenModelObj, builder: (context, khichiqLeadsCreateNewThirtysevenModelObj, child) {return CustomDropDown(width: 153.h, icon: Container(margin: EdgeInsets.fromLTRB(30.h, 17.v, 12.h, 17.v), child: CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize)), hintText: "lbl_my_offer".tr, items: khichiqLeadsCreateNewThirtysevenModelObj?.dropdownItemList5 ?? [], onChanged: (value) {context.read<KhichiqLeadsCreateNewThirtysevenProvider>().onSelected5(value);});})]), _buildMarkasPaid2(context)])), SizedBox(height: 18.v), Divider(), SizedBox(height: 10.v), Padding(padding: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_total_outgoing".tr, style: theme.textTheme.bodyMedium), Text("lbl_15_000_00".tr, style: theme.textTheme.titleSmall)])), SizedBox(height: 8.v), _buildPaid(context)])); } 
/// Section Widget
Widget _buildCREATEORDER(BuildContext context) { return CustomElevatedButton(text: "lbl_create_order".tr); } 
/// Section Widget
Widget _buildCREATEORDER1(BuildContext context) { return SizedBox(height: 147.v, width: double.maxFinite, child: Stack(alignment: Alignment.bottomRight, children: [Align(alignment: Alignment.topCenter, child: SizedBox(height: 71.v, width: 343.h, child: Stack(alignment: Alignment.centerRight, children: [Padding(padding: EdgeInsets.only(right: 181.h), child: _buildPaidOnDate(context, paidOnDate: "lbl_paid_on_date".tr, augTwentyThree: "lbl_16_aug_23".tr)), Padding(padding: EdgeInsets.only(left: 181.h), child: _buildAmount(context, amount: "lbl_amount".tr, price: "lbl_10_000".tr)), Align(alignment: Alignment.center, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Padding(padding: EdgeInsets.only(right: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_paid_on_date".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 7.v), Container(width: 162.h, padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text("lbl_16_aug_23".tr, style: theme.textTheme.titleMedium)), CustomImageView(imagePath: ImageConstant.imgCalender, height: 24.adaptSize, width: 24.adaptSize)]))]))), Expanded(child: Padding(padding: EdgeInsets.only(left: 9.h), child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text("lbl_amount".tr, style: theme.textTheme.labelLarge)), SizedBox(height: 7.v), Container(width: 162.h, padding: EdgeInsets.all(11.h), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text("lbl_10_000".tr, style: theme.textTheme.titleMedium)]))])))]))]))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 16.h, bottom: 24.v), child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize, margin: EdgeInsets.only(bottom: 1.v)), Padding(padding: EdgeInsets.only(left: 8.h), child: Text("lbl_add_payment".tr, style: CustomTextStyles.titleSmallPrimary))]))), Align(alignment: Alignment.bottomRight, child: Padding(padding: EdgeInsets.only(right: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [CustomImageView(imagePath: ImageConstant.imgFloatingIcon, height: 18.adaptSize, width: 18.adaptSize, margin: EdgeInsets.only(top: 4.v)), Padding(padding: EdgeInsets.only(left: 8.h, bottom: 4.v), child: Text("lbl_add_quote".tr, style: CustomTextStyles.titleSmallPrimary))]))), Align(alignment: Alignment.bottomCenter, child: Container(margin: EdgeInsets.only(bottom: 12.v), padding: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 14.v), decoration: AppDecoration.outlineGray, child: Column(mainAxisSize: MainAxisSize.min, children: [SizedBox(height: 20.v), _buildCREATEORDER(context)])))])); } 
/// Section Widget
Widget _buildOtherInfo(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("lbl_other_info".tr, style: CustomTextStyles.titleSmallPrimary), CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary, height: 14.adaptSize, width: 14.adaptSize)])); } 
/// Section Widget
Widget _buildFrameSeventyFive(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, color: appTheme.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.indigo100.withOpacity(0.5), width: 1.h), borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 63.v, width: 343.h, padding: EdgeInsets.symmetric(horizontal: 7.h, vertical: 6.v), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.center, child: Container(height: 48.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray50, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.indigo100, width: 1.h)))), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("msg_take_confirmation".tr, style: theme.textTheme.titleMedium)))]))); } 
/// Section Widget
Widget _buildCALENDER(BuildContext context) { return Padding(padding: EdgeInsets.symmetric(horizontal: 16.h), child: Selector<KhichiqLeadsCreateNewThirtysevenProvider, TextEditingController?>(selector: (context, provider) => provider.cALENDERController, builder: (context, cALENDERController, child) {return CustomTextFormField(controller: cALENDERController, hintText: "lbl_16_aug_23".tr, textInputAction: TextInputAction.done, suffix: Container(margin: EdgeInsets.fromLTRB(30.h, 12.v, 12.h, 12.v), child: CustomImageView(imagePath: ImageConstant.imgCalender, height: 24.adaptSize, width: 24.adaptSize)), suffixConstraints: BoxConstraints(maxHeight: 48.v), contentPadding: EdgeInsets.only(left: 12.h, top: 12.v, bottom: 12.v));})); } 
/// Section Widget
Widget _buildFrame1(BuildContext context) { return Card(clipBehavior: Clip.antiAlias, elevation: 0, color: appTheme.whiteA700, shape: RoundedRectangleBorder(side: BorderSide(color: appTheme.indigo100.withOpacity(0.5), width: 1.h), borderRadius: BorderRadiusStyle.roundedBorder8), child: Container(height: 134.v, width: 343.h, padding: EdgeInsets.all(7.h), decoration: AppDecoration.outlineIndigo1001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.center, child: Container(height: 118.v, width: 327.h, decoration: BoxDecoration(color: appTheme.gray50, borderRadius: BorderRadius.circular(8.h), border: Border.all(color: appTheme.indigo100, width: 1.h)))), Align(alignment: Alignment.topLeft, child: Padding(padding: EdgeInsets.only(left: 12.h, top: 12.v), child: Text("lbl_type_here".tr, style: CustomTextStyles.bodyLargeGray400)))]))); } 
/// Common widget
Widget _buildAugTwentyThree(BuildContext context, {required String augTwentyThree, required String cALENDER, }) { return Container(padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text(augTwentyThree, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray900))), CustomImageView(imagePath: cALENDER, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(right: 4.h))])); } 
/// Common widget
Widget _buildStartTimeapprox(BuildContext context, {required String startTimeapprox, required String time, }) { return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: RichText(text: TextSpan(children: [TextSpan(text: "msg_start_time_approx2".tr, style: CustomTextStyles.labelLargeff666666), TextSpan(text: "lbl2".tr, style: CustomTextStyles.labelLargefff03636)]), textAlign: TextAlign.left)), SizedBox(height: 6.v), Container(width: 153.h, padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 12.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(time, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray900)), CustomImageView(imagePath: ImageConstant.imgArrowdown, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.symmetric(vertical: 3.v))]))]); } 
/// Common widget
Widget _buildEventteam(BuildContext context, {required String eVENTTEAM, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(eVENTTEAM, style: theme.textTheme.bodySmall!.copyWith(color: appTheme.gray700)), CustomImageView(imagePath: ImageConstant.imgArrowUp, height: 16.adaptSize, width: 16.adaptSize)]); } 
/// Common widget
Widget _buildPhotographer(BuildContext context, {required String photographer, required String arrowDown, }) { return Container(width: 153.h, padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: Text(photographer, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray900))), CustomImageView(imagePath: arrowDown, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(top: 3.v, bottom: 5.v))])); } 
/// Common widget
Widget _buildSankalpK(BuildContext context, {required String sankalpK, required String floatingIcon, }) { return Container(width: 153.h, padding: EdgeInsets.symmetric(vertical: 10.v), decoration: AppDecoration.outlineGreenA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text(sankalpK, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray900))), CustomImageView(imagePath: floatingIcon, height: 24.adaptSize, width: 24.adaptSize)])); } 
/// Common widget
Widget _buildOrderPayments(BuildContext context, {required String orderPayments, }) { return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(orderPayments, style: CustomTextStyles.titleSmallPrimary.copyWith(color: theme.colorScheme.primary)), CustomImageView(imagePath: ImageConstant.imgArrowUpPrimary, height: 14.adaptSize, width: 14.adaptSize, margin: EdgeInsets.only(bottom: 3.v))]); } 
/// Common widget
Widget _buildPaidOnDate(BuildContext context, {required String paidOnDate, required String augTwentyThree, }) { return Expanded(child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text(paidOnDate, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray700))), SizedBox(height: 7.v), Container(width: 162.h, padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 10.v), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: Text(augTwentyThree, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray900))), CustomImageView(imagePath: ImageConstant.imgCalender, height: 24.adaptSize, width: 24.adaptSize)]))]))); } 
/// Common widget
Widget _buildAmount(BuildContext context, {required String amount, required String price, }) { return Expanded(child: SizedBox(width: double.maxFinite, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Text(amount, style: theme.textTheme.labelLarge!.copyWith(color: appTheme.gray700))), SizedBox(height: 7.v), Container(width: 162.h, padding: EdgeInsets.all(11.h), decoration: AppDecoration.outlineIndigo100.copyWith(borderRadius: BorderRadiusStyle.roundedBorder8), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Text(price, style: theme.textTheme.titleMedium!.copyWith(color: appTheme.blueGray900))]))]))); } 

/// Navigates to the previous screen.
onTapArrowLeft(BuildContext context) { NavigatorService.goBack(); } 
/// Navigates to the khichiqLeadsCreateNewThirtythreeScreen when the action is triggered.
onTapArrowUp(BuildContext context) { NavigatorService.pushNamed(AppRoutes.khichiqLeadsCreateNewThirtythreeScreen, ); } 
 }
