import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_dp_2k_model.dart';/// A provider class for the KhichiqProfileCompletionStep1Dp2kScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1Dp2kScreen, including the
/// current khichiqProfileCompletionStep1Dp2kModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1Dp2kProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController thirtyNineController = TextEditingController();

KhichiqProfileCompletionStep1Dp2kModel khichiqProfileCompletionStep1Dp2kModelObj = KhichiqProfileCompletionStep1Dp2kModel();

@override void dispose() { super.dispose(); emailController.dispose(); thirtyNineController.dispose(); } 
 }
