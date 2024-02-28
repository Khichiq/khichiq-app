import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:vtracku_s_application6/core/app_export.dart';
import 'provider/app_navigation_provider.dart';

class AppNavigationScreen extends StatefulWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  AppNavigationScreenState createState() => AppNavigationScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppNavigationProvider(),
      child: AppNavigationScreen(),
    );
  }
}

class AppNavigationScreenState extends State<AppNavigationScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Splash / One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqSplashOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Onboarding / One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Onboarding / 1A".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboarding1aScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "5Khichiq / Onboarding / OTP Input / Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingOtpInputFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / Six".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInputSixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInputSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / 7A".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInput7aScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / 7B".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInput7bScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / Eight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInputEightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / 8A".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInput8aScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / 8C".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInput8cScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / 8E".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqOnboardingDataInput8eScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Home / Seven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqHomeSevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Home / Fourteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqHomeFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Home / One".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqProfileCompletionHomeOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1/ Two".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqProfileCompletionStep1TwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1 OTP/ 2B"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep1Otp2bScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1 Email Verified/ 2c"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep1EmailVerified2cScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1 otp error / 2D"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep1OtpError2dScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1 Retry / 2E"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep1Retry2eScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1 DP / 2K"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep1Dp2kScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 1 DP / 2K One"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep1Dp2kOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 2 charges / Two"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep2ChargesTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 2 manager / 1D"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep2Manager1dScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Profile completion / Step 2 complete / 1E"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqProfileCompletionStep2Complete1eScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Onboarding / Data Input / TwentyEight"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqOnboardingDataInputTwentyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / ThirtyEight".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewThirtyeightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Home / Default / Three".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqHomeDefaultThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Home / Widgets / Four - Container".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqHomeWidgetsFourContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Orders / TwentySeven - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqOrdersTwentysevenTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Leads / edit / Thirteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsEditThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Leads / edit / Fourteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsEditFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / ThirtyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewThirtythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / ThirtySix".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewThirtysixScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / ThirtyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewThirtyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / FortyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewFortyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / ThirtySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewThirtysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / FortyFive".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewFortyfiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / FortyTwo".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewFortytwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Leads / edit / TwentyFour".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsEditTwentyfourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Home / Default / Five".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqHomeDefaultFiveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Khichiq / Home / Default / Four".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqHomeDefaultFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Hifi TwentySix - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqLeadsHifiTwentysixTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Hifi ThirtyEight - Tab Container"
                                  .tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqLeadsHifiThirtyeightTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / edit / ThirtyThree".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsEditThirtythreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / edit / ThirtySeven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsEditThirtysevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Ten".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewHifiTenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Fourteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqLeadsCreateNewHifiFourteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Eleven".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewHifiElevenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Thirteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                              .khichiqLeadsCreateNewHifiThirteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Twelve".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewHifiTwelveScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Fifteen".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewHifiFifteenScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Khichiq / Leads / Create New / Hifi Nine".tr,
                          onTapScreenTitle: () => onTapScreenTitle(
                              AppRoutes.khichiqLeadsCreateNewHifiNineScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
