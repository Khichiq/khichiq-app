import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_profile_completion_step_1_retry_2e_model.dart';/// A provider class for the KhichiqProfileCompletionStep1Retry2eScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1Retry2eScreen, including the
/// current khichiqProfileCompletionStep1Retry2eModelObj

// ignore_for_file: must_be_immutable
class KhichiqProfileCompletionStep1Retry2eProvider extends ChangeNotifier {TextEditingController twentySixController = TextEditingController();

KhichiqProfileCompletionStep1Retry2eModel khichiqProfileCompletionStep1Retry2eModelObj = KhichiqProfileCompletionStep1Retry2eModel();

@override void dispose() { super.dispose(); twentySixController.dispose(); } 
 }
