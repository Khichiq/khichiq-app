import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_1a_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the KhichiqOnboarding1aScreen.
///
/// This provider manages the state of the KhichiqOnboarding1aScreen, including the
/// current khichiqOnboarding1aModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboarding1aProvider extends ChangeNotifier {TextEditingController phoneNumberController = TextEditingController();

KhichiqOnboarding1aModel khichiqOnboarding1aModelObj = KhichiqOnboarding1aModel();

Country? selectedCountry;

@override void dispose() { super.dispose(); phoneNumberController.dispose(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
 }
