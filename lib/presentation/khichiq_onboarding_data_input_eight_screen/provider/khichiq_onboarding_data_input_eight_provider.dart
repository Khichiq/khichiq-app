import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_data_input_eight_model.dart';/// A provider class for the KhichiqOnboardingDataInputEightScreen.
///
/// This provider manages the state of the KhichiqOnboardingDataInputEightScreen, including the
/// current khichiqOnboardingDataInputEightModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInputEightProvider extends ChangeNotifier {TextEditingController kHIQINVController = TextEditingController();

KhichiqOnboardingDataInputEightModel khichiqOnboardingDataInputEightModelObj = KhichiqOnboardingDataInputEightModel();

@override void dispose() { super.dispose(); kHIQINVController.dispose(); } 
 }
