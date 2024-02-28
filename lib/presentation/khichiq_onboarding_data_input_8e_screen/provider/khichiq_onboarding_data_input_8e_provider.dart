import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_data_input_8e_model.dart';/// A provider class for the KhichiqOnboardingDataInput8eScreen.
///
/// This provider manages the state of the KhichiqOnboardingDataInput8eScreen, including the
/// current khichiqOnboardingDataInput8eModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInput8eProvider extends ChangeNotifier {TextEditingController sAKHController = TextEditingController();

KhichiqOnboardingDataInput8eModel khichiqOnboardingDataInput8eModelObj = KhichiqOnboardingDataInput8eModel();

@override void dispose() { super.dispose(); sAKHController.dispose(); } 
 }
