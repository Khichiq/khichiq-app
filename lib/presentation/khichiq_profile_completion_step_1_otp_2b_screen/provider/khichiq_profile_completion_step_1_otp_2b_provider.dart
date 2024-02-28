import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_otp_2b_model.dart';/// A provider class for the KhichiqProfileCompletionStep1Otp2bScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1Otp2bScreen, including the
/// current khichiqProfileCompletionStep1Otp2bModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1Otp2bProvider extends ChangeNotifier {TextEditingController fortyOneController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController otpController = TextEditingController();

KhichiqProfileCompletionStep1Otp2bModel khichiqProfileCompletionStep1Otp2bModelObj = KhichiqProfileCompletionStep1Otp2bModel();

@override void dispose() { super.dispose(); fortyOneController.dispose(); nameController.dispose(); } 
 }
