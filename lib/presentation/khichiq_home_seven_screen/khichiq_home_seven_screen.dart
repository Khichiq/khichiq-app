import 'package:vtracku_s_application6/presentation/khichiq_home_widgets_four_page/khichiq_home_widgets_four_page.dart';
import 'package:vtracku_s_application6/presentation/khichiq_orders_twentysix_tab_container_page/khichiq_orders_twentysix_tab_container_page.dart';
import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_image.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/lineeight_item_widget.dart';
import 'models/lineeight_item_model.dart';
import 'models/khichiq_home_seven_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:vtracku_s_application6/widgets/custom_elevated_button.dart';
import 'package:vtracku_s_application6/widgets/custom_bottom_bar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_home_seven_provider.dart';

class KhichiqHomeSevenScreen extends StatefulWidget {
  const KhichiqHomeSevenScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqHomeSevenScreenState createState() => KhichiqHomeSevenScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqHomeSevenProvider(),
      child: KhichiqHomeSevenScreen(),
    );
  }
}

class KhichiqHomeSevenScreenState extends State<KhichiqHomeSevenScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 29.v),
              Expanded(
                child: SingleChildScrollView(
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
                            "lbl_my_leads_1".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildFrameSeventyThree(context),
                        SizedBox(height: 25.v),
                        Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text(
                            "lbl_my_team".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        SizedBox(height: 8.v),
                        _buildFrameSeventyFour(context),
                        SizedBox(height: 25.v),
                        _buildPayments(context),
                        SizedBox(height: 8.v),
                        _buildFrameSeventyFive(context),
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
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: Container(
        margin: EdgeInsets.only(
          left: 16.h,
          top: 4.v,
          bottom: 4.v,
        ),
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        decoration: AppDecoration.fillAmberA.copyWith(
          borderRadius: BorderRadiusStyle.circleBorder24,
        ),
        child: AppbarImage(
          imagePath: ImageConstant.imgPlay,
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
              text: "lbl".tr,
              margin: EdgeInsets.only(right: 79.h),
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
          imagePath: ImageConstant.imgNotificationDefault,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 1.v),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_sample_event_1".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                      ),
                      SizedBox(height: 6.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: SizedBox(
                              width: 322.h,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      "lbl_jhon_sara".tr,
                                      style: theme.textTheme.bodyMedium,
                                    ),
                                  ),
                                  Spacer(),
                                  Container(
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 2.h),
                                    decoration: AppDecoration.fillBlue.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder11,
                                    ),
                                    child: CustomImageView(
                                      imagePath:
                                          ImageConstant.imgPlayBlueGray700,
                                      height: 22.v,
                                      width: 17.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                  Container(
                                    height: 22.adaptSize,
                                    width: 22.adaptSize,
                                    margin: EdgeInsets.only(left: 8.h),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 1.h),
                                    decoration:
                                        AppDecoration.fillAmberA.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder11,
                                    ),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgPlayRed200,
                                      height: 22.v,
                                      width: 18.h,
                                      alignment: Alignment.center,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Divider(),
                      ),
                    ],
                  ),
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
                            Container(
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              padding: EdgeInsets.symmetric(horizontal: 2.h),
                              decoration: AppDecoration.fillBlue.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder11,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgPlayBlueGray700,
                                height: 22.v,
                                width: 17.h,
                                alignment: Alignment.center,
                              ),
                            ),
                            Container(
                              height: 22.adaptSize,
                              width: 22.adaptSize,
                              margin: EdgeInsets.only(left: 8.h),
                              padding: EdgeInsets.symmetric(horizontal: 1.h),
                              decoration: AppDecoration.fillAmberA.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder11,
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgPlayRed200,
                                height: 22.v,
                                width: 18.h,
                                alignment: Alignment.center,
                              ),
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
              more: "lbl_0_more".tr,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_sample_lead_1".tr,
                  style: theme.textTheme.titleMedium,
                ),
                Container(
                  width: 35.h,
                  margin: EdgeInsets.only(bottom: 4.v),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 1.v,
                  ),
                  decoration: AppDecoration.fillOrange.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Text(
                    "lbl_new".tr,
                    style: CustomTextStyles.bodySmallOrange600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 9.v),
          Divider(),
          SizedBox(height: 7.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildFooter(
              context,
              more: "lbl_0_more".tr,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyFour(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1.h),
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
          SizedBox(
            height: 164.v,
            width: 343.h,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Consumer<KhichiqHomeSevenProvider>(
                  builder: (context, provider, child) {
                    return CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 164.v,
                        initialPage: 0,
                        autoPlay: true,
                        viewportFraction: 1.0,
                        enableInfiniteScroll: false,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (
                          index,
                          reason,
                        ) {
                          provider.sliderIndex = index;
                        },
                      ),
                      itemCount: provider
                          .khichiqHomeSevenModelObj.lineeightItemList.length,
                      itemBuilder: (context, index, realIndex) {
                        LineeightItemModel model = provider
                            .khichiqHomeSevenModelObj.lineeightItemList[index];
                        return LineeightItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Consumer<KhichiqHomeSevenProvider>(
                    builder: (context, provider, child) {
                      return SizedBox(
                        height: 6.v,
                        child: AnimatedSmoothIndicator(
                          activeIndex: provider.sliderIndex,
                          count: provider.khichiqHomeSevenModelObj
                              .lineeightItemList.length,
                          axisDirection: Axis.horizontal,
                          effect: ScrollingDotsEffect(
                            activeDotColor: Color(0X1212121D),
                            dotHeight: 6.v,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 3.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPayments(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "lbl_payments".tr,
            style: theme.textTheme.titleSmall,
          ),
          Text(
            "lbl_sample_data".tr,
            style: CustomTextStyles.titleSmallGray500,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameSeventyFive(BuildContext context) {
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
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildRevenue(
              context,
              revenue: "lbl_total_due".tr,
              price: "lbl_6_974_00".tr,
            ),
          ),
          SizedBox(height: 8.v),
          Divider(),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.h),
            child: _buildRevenue(
              context,
              revenue: "lbl_revenue".tr,
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

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
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
  Widget _buildRevenue(
    BuildContext context, {
    required String revenue,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(
            revenue,
            style: CustomTextStyles.titleMediumGray700.copyWith(
              color: appTheme.gray700,
            ),
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleMediumGreenA700.copyWith(
            color: appTheme.greenA700,
          ),
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.khichiqHomeWidgetsFourPage;
      case BottomBarEnum.Orders:
        return AppRoutes.khichiqOrdersTwentysixTabContainerPage;
      case BottomBarEnum.Leads:
        return "/";
      case BottomBarEnum.Calendar:
        return "/";
      case BottomBarEnum.Payments:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.khichiqHomeWidgetsFourPage:
        return KhichiqHomeWidgetsFourPage.builder(context);
      case AppRoutes.khichiqOrdersTwentysixTabContainerPage:
        return KhichiqOrdersTwentysixTabContainerPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
