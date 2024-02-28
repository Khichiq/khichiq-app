import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_dp_2k_one_model.dart';/// A provider class for the KhichiqProfileCompletionStep1Dp2kOneScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1Dp2kOneScreen, including the
/// current khichiqProfileCompletionStep1Dp2kOneModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1Dp2kOneProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController fiveController = TextEditingController();

KhichiqProfileCompletionStep1Dp2kOneModel khichiqProfileCompletionStep1Dp2kOneModelObj = KhichiqProfileCompletionStep1Dp2kOneModel();

@override void dispose() { super.dispose(); emailController.dispose(); fiveController.dispose(); } 
 }
