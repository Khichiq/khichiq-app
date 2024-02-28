import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_data_input_8c_model.dart';/// A provider class for the KhichiqOnboardingDataInput8cScreen.
///
/// This provider manages the state of the KhichiqOnboardingDataInput8cScreen, including the
/// current khichiqOnboardingDataInput8cModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInput8cProvider extends ChangeNotifier {TextEditingController kHIQINVController = TextEditingController();

KhichiqOnboardingDataInput8cModel khichiqOnboardingDataInput8cModelObj = KhichiqOnboardingDataInput8cModel();

@override void dispose() { super.dispose(); kHIQINVController.dispose(); } 
 }
