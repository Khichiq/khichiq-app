import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_2_charges_two_model.dart';/// A provider class for the KhichiqProfileCompletionStep2ChargesTwoScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep2ChargesTwoScreen, including the
/// current khichiqProfileCompletionStep2ChargesTwoModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep2ChargesTwoProvider extends ChangeNotifier {TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

TextEditingController priceController2 = TextEditingController();

KhichiqProfileCompletionStep2ChargesTwoModel khichiqProfileCompletionStep2ChargesTwoModelObj = KhichiqProfileCompletionStep2ChargesTwoModel();

@override void dispose() { super.dispose(); priceController.dispose(); priceController1.dispose(); priceController2.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqProfileCompletionStep2ChargesTwoModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
