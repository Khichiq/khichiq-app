import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_otp_error_2d_model.dart';/// A provider class for the KhichiqProfileCompletionStep1OtpError2dScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1OtpError2dScreen, including the
/// current khichiqProfileCompletionStep1OtpError2dModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1OtpError2dProvider extends ChangeNotifier {TextEditingController sixtyTwoController = TextEditingController();

KhichiqProfileCompletionStep1OtpError2dModel khichiqProfileCompletionStep1OtpError2dModelObj = KhichiqProfileCompletionStep1OtpError2dModel();

@override void dispose() { super.dispose(); sixtyTwoController.dispose(); } 
 }
