import 'package:vtracku_s_application6/presentation/khichiq_home_widgets_four_page/khichiq_home_widgets_four_page.dart';
import 'package:vtracku_s_application6/presentation/khichiq_orders_twentysix_tab_container_page/khichiq_orders_twentysix_tab_container_page.dart';
import 'package:vtracku_s_application6/widgets/custom_bottom_bar.dart';
import 'models/khichiq_home_widgets_four_container_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/khichiq_home_widgets_four_container_provider.dart';

class KhichiqHomeWidgetsFourContainerScreen extends StatefulWidget {
  const KhichiqHomeWidgetsFourContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  KhichiqHomeWidgetsFourContainerScreenState createState() =>
      KhichiqHomeWidgetsFourContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => KhichiqHomeWidgetsFourContainerProvider(),
      child: KhichiqHomeWidgetsFourContainerScreen(),
    );
  }
}

class KhichiqHomeWidgetsFourContainerScreenState
    extends State<KhichiqHomeWidgetsFourContainerScreen> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: navigatorKey,
          initialRoute: AppRoutes.khichiqHomeWidgetsFourPage,
          onGenerateRoute: (routeSetting) => PageRouteBuilder(
            pageBuilder: (ctx, ani, ani1) =>
                getCurrentPage(context, routeSetting.name!),
            transitionDuration: Duration(seconds: 0),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
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
