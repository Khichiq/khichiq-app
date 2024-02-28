import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:vtracku_s_application6/widgets/custom_text_form_field.dart';
import 'widgets/khichiqhomewidgetsfour_item_widget.dart';
import 'models/khichiqhomewidgetsfour_item_model.dart';
import 'models/khichiq_home_widgets_four_model.dart';
import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_home_widgets_four_provider.dart';

// ignore_for_file: must_be_immutable
class KhichiqHomeWidgetsFourPage extends StatefulWidget {
  const KhichiqHomeWidgetsFourPage({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqHomeWidgetsFourPageState createState() =>
      KhichiqHomeWidgetsFourPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqHomeWidgetsFourProvider(),
      child: KhichiqHomeWidgetsFourPage(),
    );
  }
}

class KhichiqHomeWidgetsFourPageState
    extends State<KhichiqHomeWidgetsFourPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 29.v),
            child: Container(
              margin: EdgeInsets.only(bottom: 5.v),
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "msg_upcoming_events".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildFrameSeventyTwo(context),
                  SizedBox(height: 25.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_my_leads_3".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  _buildFrameSeventyThree(context),
                  SizedBox(height: 24.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_studio_team".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildTotalDue2(context),
                  SizedBox(height: 23.v),
                  Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "lbl_more_from_us".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  _buildFrameSeventySix(context),
                  SizedBox(height: 40.v),
                  Container(
                    height: 97.v,
                    width: 270.h,
                    margin: EdgeInsets.only(left: 1.h),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            "lbl_smilee".tr,
                            style: CustomTextStyles.outfitIndigo50,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUpload,
                          height: 54.v,
                          width: 52.h,
                          alignment: Alignment.topRight,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgBaa045e1A45541,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 18.h),
        child: Column(
          children: [
            AppbarSubtitleTwo(
              text: "lbl_hi_chinmay".tr,
            ),
            AppbarSubtitleFour(
              text: "lbl_sys_photography".tr,
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgNotificationActive,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 16.v,
            right: 16.h,
          ),
        ),
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgFloatingIconPrimary,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 16.v,
            right: 32.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyTwo(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineIndigo1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildTotalDue(
              context,
              totalDue: "lbl_wedding_shoot".tr,
              price: "lbl_17_aug_2023".tr,
            ),
          ),
          SizedBox(height: 6.v),
          SizedBox(
            height: 32.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Selector<KhichiqHomeWidgetsFourProvider,
                    TextEditingController?>(
                  selector: (
                    context,
                    provider,
                  ) =>
                      provider.playController,
                  builder: (context, playController, child) {
                    return CustomTextFormField(
                      width: 343.h,
                      controller: playController,
                      hintText: "lbl_swara_sanket".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      alignment: Alignment.center,
                      suffix: Container(
                        padding: EdgeInsets.symmetric(horizontal: 1.h),
                        margin: EdgeInsets.only(
                          left: 30.h,
                          right: 10.h,
                        ),
                        decoration: BoxDecoration(
                          color: appTheme.amberA200,
                          borderRadius: BorderRadius.circular(
                            11.h,
                          ),
                        ),
                        child: CustomImageView(
                          imagePath: ImageConstant.imgPlayRed200,
                          height: 22.v,
                          width: 18.h,
                        ),
                      ),
                      suffixConstraints: BoxConstraints(
                        maxHeight: 32.v,
                      ),
                      contentPadding: EdgeInsets.only(
                        left: 10.h,
                        top: 2.v,
                        bottom: 2.v,
                      ),
                      borderDecoration: TextFormFieldStyleHelper.underLineGray,
                      filled: false,
                    );
                  },
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgBaa045e1A455422x22,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  radius: BorderRadius.circular(
                    11.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 70.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.img20190529153104,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                  radius: BorderRadius.circular(
                    11.h,
                  ),
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(right: 40.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "msg_pre_wedding_shoot".tr,
                        style: theme.textTheme.titleMedium,
                      ),
                    ),
                    SizedBox(height: 9.v),
                    Selector<KhichiqHomeWidgetsFourProvider,
                        TextEditingController?>(
                      selector: (
                        context,
                        provider,
                      ) =>
                          provider.sayaliAniketController,
                      builder: (context, sayaliAniketController, child) {
                        return CustomTextFormField(
                          controller: sayaliAniketController,
                          hintText: "lbl_sayali_aniket".tr,
                          hintStyle: theme.textTheme.bodyMedium!,
                          textInputAction: TextInputAction.done,
                          alignment: Alignment.centerRight,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 10.h),
                          borderDecoration:
                              TextFormFieldStyleHelper.underLineGray,
                          filled: false,
                        );
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3.v),
                  child: Column(
                    children: [
                      Text(
                        "lbl_17_aug_2023".tr,
                        style: CustomTextStyles.titleSmallGray700,
                      ),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img20190529153104,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              radius: BorderRadius.circular(
                                11.h,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img91aa766083694,
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              radius: BorderRadius.circular(
                                11.h,
                              ),
                              margin: EdgeInsets.only(left: 8.h),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.v),
          Divider(),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildFooter(
              context,
              more: "lbl_12_more".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyThree(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
      padding: EdgeInsets.symmetric(vertical: 8.v),
      decoration: AppDecoration.outlineIndigo1001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: _buildShraddhaJoshi(
              context,
              shraddhaJoshi: "msg_shriram_upadhyay".tr,
              nEWVar: "lbl_new".tr,
            ),
          ),
          SizedBox(height: 9.v),
          Divider(),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 11.h),
            child: _buildShraddhaJoshi(
              context,
              shraddhaJoshi: "lbl_shraddha_joshi".tr,
              nEWVar: "lbl_new".tr,
            ),
          ),
          SizedBox(height: 11.v),
          Divider(),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildFooter(
              context,
              more: "lbl_4_more".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTotalDue2(BuildContext context) {
    return Container(
      height: 384.v,
      width: 344.h,
      margin: EdgeInsets.only(left: 1.h),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.symmetric(vertical: 8.v),
              decoration: AppDecoration.outlineIndigo1001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: _buildTotalDue(
                      context,
                      totalDue: "lbl_total_due".tr,
                      price: "lbl_6_974_00".tr,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 10.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: _buildTotalDue(
                      context,
                      totalDue: "lbl_revenue".tr,
                      price: "lbl_6_12_000_00".tr,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: _buildFooter(
                      context,
                      more: "lbl_view_in_detail".tr,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.only(right: 1.h),
              padding: EdgeInsets.symmetric(vertical: 7.v),
              decoration: AppDecoration.outlineIndigo1001.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "lbl_status_for".tr,
                          style: CustomTextStyles.labelLargeGray500,
                        ),
                        Spacer(),
                        Text(
                          "lbl_17_aug_2023".tr,
                          style: CustomTextStyles.labelLargeBluegray900,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgCalender,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(left: 8.h),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Divider(),
                  SizedBox(height: 15.v),
                  SizedBox(
                    height: 126.v,
                    child: Consumer<KhichiqHomeWidgetsFourProvider>(
                      builder: (context, provider, child) {
                        return ListView.separated(
                          padding: EdgeInsets.only(
                            left: 10.h,
                            right: 17.h,
                          ),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (
                            context,
                            index,
                          ) {
                            return SizedBox(
                              width: 25.h,
                            );
                          },
                          itemCount: provider.khichiqHomeWidgetsFourModelObj
                              .khichiqhomewidgetsfourItemList.length,
                          itemBuilder: (context, index) {
                            KhichiqhomewidgetsfourItemModel model = provider
                                .khichiqHomeWidgetsFourModelObj
                                .khichiqhomewidgetsfourItemList[index];
                            return KhichiqhomewidgetsfourItemWidget(
                              model,
                            );
                          },
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 16.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgTelevision,
                    height: 6.v,
                    width: 28.h,
                  ),
                  SizedBox(height: 3.v),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(bottom: 130.v),
              child: Text(
                "lbl_payments".tr,
                style: theme.textTheme.titleSmall,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Consumer<KhichiqHomeWidgetsFourProvider>(
              builder: (context, provider, child) {
                return Container(
                  height: 287.v,
                  width: 344.h,
                  margin: EdgeInsets.only(top: 33.v),
                  child: CalendarDatePicker2(
                    config: CalendarDatePicker2Config(
                      calendarType: CalendarDatePicker2Type.single,
                      firstDate: DateTime(DateTime.now().year - 5),
                      lastDate: DateTime(DateTime.now().year + 5),
                      centerAlignModePicker: true,
                      firstDayOfWeek: 1,
                      controlsHeight: 19.26,
                      weekdayLabelTextStyle: TextStyle(
                        color: appTheme.gray500,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                      ),
                      todayTextStyle: TextStyle(
                        color: appTheme.whiteA700,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                      ),
                      controlsTextStyle: TextStyle(
                        color: appTheme.blueGray900,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                      ),
                      dayTextStyle: TextStyle(
                        color: appTheme.blueGray900,
                        fontFamily: 'Outfit',
                        fontWeight: FontWeight.w500,
                      ),
                      weekdayLabels: ["SU", "M", "T", "W", "TH", "F", "S"],
                    ),
                    value: provider.selectedDatesFromCalendar1 ?? [],
                    onValueChanged: (dates) {
                      provider.selectedDatesFromCalendar1 = dates;
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventySix(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 1.h),
      decoration: AppDecoration.outlineIndigo1002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 18.v,
              bottom: 18.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_how_to_use_khichiq".tr,
                  style: CustomTextStyles.titleMedium18,
                ),
                SizedBox(height: 2.v),
                Text(
                  "msg_checkout_our_demo".tr,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 13.v),
                CustomElevatedButton(
                  height: 26.v,
                  width: 108.h,
                  text: "lbl_watch_now".tr,
                  buttonStyle: CustomButtonStyles.fillPrimaryTL13,
                  buttonTextStyle: CustomTextStyles.titleSmallWhiteA700_1,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 120.v,
            width: 136.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 120.v,
                    width: 136.h,
                    decoration: BoxDecoration(
                      color: appTheme.tealA10001,
                      borderRadius: BorderRadius.circular(
                        68.h,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    margin: EdgeInsets.all(0),
                    color: appTheme.cyanA100,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder53,
                    ),
                    child: Container(
                      height: 107.adaptSize,
                      width: 107.adaptSize,
                      padding: EdgeInsets.all(16.h),
                      decoration: AppDecoration.fillCyanA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder53,
                      ),
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              height: 74.adaptSize,
                              width: 74.adaptSize,
                              decoration: BoxDecoration(
                                color: appTheme.indigoA200,
                                borderRadius: BorderRadius.circular(
                                  37.h,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              height: 56.v,
                              width: 61.h,
                              margin: EdgeInsets.only(
                                right: 1.h,
                                bottom: 1.v,
                              ),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: fs.Svg(
                                    ImageConstant.imgGroup1245,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 16.v),
                                      child: Container(
                                        height: 4.v,
                                        width: 49.h,
                                        decoration: BoxDecoration(
                                          color: appTheme.lightBlue500,
                                        ),
                                        child: ClipRRect(
                                          child: LinearProgressIndicator(
                                            value: 0.5,
                                            backgroundColor:
                                                appTheme.lightBlue500,
                                            valueColor:
                                                AlwaysStoppedAnimation<Color>(
                                              appTheme.lightBlue500,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVector,
                                    height: 38.v,
                                    width: 49.h,
                                    alignment: Alignment.topLeft,
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorIndigo5001,
                                    height: 38.v,
                                    width: 24.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(right: 12.h),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(
                                        left: 4.h,
                                        top: 8.v,
                                        right: 41.h,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimarycontainer,
                                            height: 4.v,
                                            width: 16.h,
                                            radius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                          SizedBox(height: 3.v),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorOnprimarycontainer,
                                            height: 4.v,
                                            width: 16.h,
                                            radius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                          SizedBox(height: 3.v),
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgVectorBlueGray200,
                                            height: 4.v,
                                            width: 16.h,
                                            radius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorOrangeA700,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 11.v,
                                      right: 16.h,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgVectorWhiteA700,
                                    height: 9.v,
                                    width: 7.h,
                                    alignment: Alignment.topRight,
                                    margin: EdgeInsets.only(
                                      top: 14.v,
                                      right: 19.h,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildShraddhaJoshi(
    BuildContext context, {
    required String shraddhaJoshi,
    required String nEWVar,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          shraddhaJoshi,
          style: theme.textTheme.titleMedium!.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
        Container(
          width: 35.h,
          margin: EdgeInsets.symmetric(vertical: 2.v),
          padding: EdgeInsets.symmetric(
            horizontal: 6.h,
            vertical: 1.v,
          ),
          decoration: AppDecoration.fillOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder4,
          ),
          child: Text(
            nEWVar,
            style: CustomTextStyles.bodySmallOrange600.copyWith(
              color: appTheme.orange600,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildFooter(
    BuildContext context, {
    required String more,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          more,
          style: CustomTextStyles.labelLargeGray500.copyWith(
            color: appTheme.gray500,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(
            top: 3.v,
            bottom: 2.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildTotalDue(
    BuildContext context, {
    required String totalDue,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            totalDue,
            style: CustomTextStyles.titleMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleMedium18.copyWith(
            color: appTheme.blueGray900,
          ),
        ),
      ],
    );
  }
}
