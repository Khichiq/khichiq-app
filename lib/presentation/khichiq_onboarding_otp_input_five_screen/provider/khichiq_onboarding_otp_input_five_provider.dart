import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_otp_input_five_model.dart';import '../models/trackyourpayments_item_model.dart';/// A provider class for the KhichiqOnboardingOtpInputFiveScreen.
///
/// This provider manages the state of the KhichiqOnboardingOtpInputFiveScreen, including the
/// current khichiqOnboardingOtpInputFiveModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingOtpInputFiveProvider extends ChangeNotifier {TextEditingController enterOTPController = TextEditingController();

KhichiqOnboardingOtpInputFiveModel khichiqOnboardingOtpInputFiveModelObj = KhichiqOnboardingOtpInputFiveModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); enterOTPController.dispose(); } 
 }
