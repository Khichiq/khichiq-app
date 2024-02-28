import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_data_input_7a_model.dart';import '../models/candidphotographer_item_model.dart';/// A provider class for the KhichiqOnboardingDataInput7aScreen.
///
/// This provider manages the state of the KhichiqOnboardingDataInput7aScreen, including the
/// current khichiqOnboardingDataInput7aModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInput7aProvider extends ChangeNotifier {KhichiqOnboardingDataInput7aModel khichiqOnboardingDataInput7aModelObj = KhichiqOnboardingDataInput7aModel();

bool socialMediaManager = false;

@override void dispose() { super.dispose(); } 
void changeCheckBox1(bool value) { socialMediaManager = value; notifyListeners(); } 
 }
