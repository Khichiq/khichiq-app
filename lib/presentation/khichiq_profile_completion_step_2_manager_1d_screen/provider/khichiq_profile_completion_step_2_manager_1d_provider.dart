import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_2_manager_1d_model.dart';/// A provider class for the KhichiqProfileCompletionStep2Manager1dScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep2Manager1dScreen, including the
/// current khichiqProfileCompletionStep2Manager1dModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep2Manager1dProvider extends ChangeNotifier {TextEditingController priceController = TextEditingController();

TextEditingController priceController1 = TextEditingController();

TextEditingController priceController2 = TextEditingController();

KhichiqProfileCompletionStep2Manager1dModel khichiqProfileCompletionStep2Manager1dModelObj = KhichiqProfileCompletionStep2Manager1dModel();

@override void dispose() { super.dispose(); priceController.dispose(); priceController1.dispose(); priceController2.dispose(); } 
 }
