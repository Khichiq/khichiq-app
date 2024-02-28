import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_onboarding_data_input_six_model.dart';import '../models/khichiqonboardingdatainputsix_item_model.dart';/// A provider class for the KhichiqOnboardingDataInputSixScreen.
///
/// This provider manages the state of the KhichiqOnboardingDataInputSixScreen, including the
/// current khichiqOnboardingDataInputSixModelObj

// ignore_for_file: must_be_immutable
class KhichiqOnboardingDataInputSixProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

KhichiqOnboardingDataInputSixModel khichiqOnboardingDataInputSixModelObj = KhichiqOnboardingDataInputSixModel();

@override void dispose() { super.dispose(); nameController.dispose(); emailController.dispose(); nameController1.dispose(); } 
void changeRadioButton1(int index, String value, ) { khichiqOnboardingDataInputSixModelObj.khichiqonboardingdatainputsixItemList[index].radioGroup = value; notifyListeners(); } 
void changeRadioButton2(int index, String value, ) { khichiqOnboardingDataInputSixModelObj.khichiqonboardingdatainputsixItemList[index].radioGroup1 = value; notifyListeners(); } 
void changeRadioButton3(int index, String value, ) { khichiqOnboardingDataInputSixModelObj.khichiqonboardingdatainputsixItemList[index].radioGroup2 = value; notifyListeners(); } 
void changeRadioButton4(int index, String value, ) { khichiqOnboardingDataInputSixModelObj.khichiqonboardingdatainputsixItemList[index].radioGroup3 = value; notifyListeners(); } 
 }
