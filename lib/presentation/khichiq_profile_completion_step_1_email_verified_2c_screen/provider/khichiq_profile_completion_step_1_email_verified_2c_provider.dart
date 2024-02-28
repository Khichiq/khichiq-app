import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_email_verified_2c_model.dart';/// A provider class for the KhichiqProfileCompletionStep1EmailVerified2cScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1EmailVerified2cScreen, including the
/// current khichiqProfileCompletionStep1EmailVerified2cModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1EmailVerified2cProvider extends ChangeNotifier {TextEditingController emailController = TextEditingController();

TextEditingController fortyTwoController = TextEditingController();

KhichiqProfileCompletionStep1EmailVerified2cModel khichiqProfileCompletionStep1EmailVerified2cModelObj = KhichiqProfileCompletionStep1EmailVerified2cModel();

@override void dispose() { super.dispose(); emailController.dispose(); fortyTwoController.dispose(); } 
 }
