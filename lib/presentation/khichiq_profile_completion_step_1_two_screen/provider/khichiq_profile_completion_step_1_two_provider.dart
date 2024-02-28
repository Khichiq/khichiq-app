import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_two_model.dart';/// A provider class for the KhichiqProfileCompletionStep1TwoScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1TwoScreen, including the
/// current khichiqProfileCompletionStep1TwoModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1TwoProvider extends ChangeNotifier {TextEditingController thirtyFourController = TextEditingController();

TextEditingController nameController = TextEditingController();

KhichiqProfileCompletionStep1TwoModel khichiqProfileCompletionStep1TwoModelObj = KhichiqProfileCompletionStep1TwoModel();

@override void dispose() { super.dispose(); thirtyFourController.dispose(); nameController.dispose(); } 
 }
