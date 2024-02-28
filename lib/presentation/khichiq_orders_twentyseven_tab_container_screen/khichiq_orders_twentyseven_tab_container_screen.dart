import 'package:vtracku_s_application6/presentation/khichiq_home_widgets_four_page/khichiq_home_widgets_four_page.dart';
import 'package:vtracku_s_application6/presentation/khichiq_orders_twentysix_tab_container_page/khichiq_orders_twentysix_tab_container_page.dart';
import 'package:vtracku_s_application6/widgets/app_bar/custom_app_bar.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_leading_circleimage.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_subtitle.dart';
import 'package:vtracku_s_application6/widgets/app_bar/appbar_trailing_image.dart';
import 'package:vtracku_s_application6/presentation/khichiq_orders_twentyseven_page/khichiq_orders_twentyseven_page.dart';
import 'package:vtracku_s_application6/widgets/custom_bottom_bar.dart';
import 'models/khichiq_orders_twentyseven_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_orders_twentyseven_tab_container_provider.dart';

class KhichiqOrdersTwentysevenTabContainerScreen extends StatefulWidget {
  const KhichiqOrdersTwentysevenTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqOrdersTwentysevenTabContainerScreenState createState() =>
      KhichiqOrdersTwentysevenTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqOrdersTwentysevenTabContainerProvider(),
      child: KhichiqOrdersTwentysevenTabContainerScreen(),
    );
  }
}

class KhichiqOrdersTwentysevenTabContainerScreenState
    extends State<KhichiqOrdersTwentysevenTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
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
              SizedBox(height: 24.v),
              _buildTABS(context),
              Expanded(
                child: SizedBox(
                  height: 649.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      KhichiqOrdersTwentysevenPage.builder(context),
                      KhichiqOrdersTwentysevenPage.builder(context),
                    ],
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
      height: 64.v,
      leadingWidth: 64.h,
      leading: AppbarLeadingCircleimage(
        imagePath: ImageConstant.imgBaa045e1A45541,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_orders_12".tr,
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFloatingIcon,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 20.v,
            right: 20.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearchGray500,
          margin: EdgeInsets.only(
            left: 18.h,
            top: 20.v,
            right: 36.h,
          ),
        ),
      ],
      styleType: Style.bgOutline,
    );
  }

  /// Section Widget
  Widget _buildTABS(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 30.v,
            width: 161.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.whiteA700,
              labelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.blueGray900,
              unselectedLabelStyle: TextStyle(
                fontSize: 14.fSize,
                fontFamily: 'Outfit',
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                color: theme.colorScheme.primary,
                borderRadius: BorderRadius.circular(
                  15.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text(
                    "lbl_all".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_upcoming2".tr,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 100.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineIndigo1003.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_my_shoots".tr,
              style: CustomTextStyles.bodyMediumBluegray900,
            ),
          ),
          Container(
            width: 105.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 4.v,
            ),
            decoration: AppDecoration.outlineIndigo1003.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_completed".tr,
              style: CustomTextStyles.bodyMediumBluegray900,
            ),
          ),
          Container(
            width: 92.h,
            margin: EdgeInsets.only(left: 8.h),
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 6.v,
            ),
            decoration: AppDecoration.outlineIndigo1003.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder15,
            ),
            child: Text(
              "lbl_archived".tr,
              style: CustomTextStyles.bodyMediumBluegray900,
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
