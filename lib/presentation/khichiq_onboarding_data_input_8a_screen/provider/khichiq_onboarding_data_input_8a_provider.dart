import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_data_input_8a_model.dart';/// A provider class for the KhichiqOnboardingDataInput8aScreen.
///
/// This provider manages the state of the KhichiqOnboardingDataInput8aScreen, including the
/// current khichiqOnboardingDataInput8aModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInput8aProvider extends ChangeNotifier {TextEditingController kHIQINVController = TextEditingController();

KhichiqOnboardingDataInput8aModel khichiqOnboardingDataInput8aModelObj = KhichiqOnboardingDataInput8aModel();

@override void dispose() { super.dispose(); kHIQINVController.dispose(); } 
 }
