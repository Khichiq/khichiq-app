import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_profile_completion_step_1_quit_popup_2f_model.dart';

/// A provider class for the KhichiqProfileCompletionStep1QuitPopup2fBottomsheet.
///
/// This provider manages the state of the KhichiqProfileCompletionStep1QuitPopup2fBottomsheet, including the
/// current khichiqProfileCompletionStep1QuitPopup2fModelObj
class KhichiqProfileCompletionStep1QuitPopup2fProvider extends ChangeNotifier {
  KhichiqProfileCompletionStep1QuitPopup2fModel
      khichiqProfileCompletionStep1QuitPopup2fModelObj =
      KhichiqProfileCompletionStep1QuitPopup2fModel();

  @override
  void dispose() {
    super.dispose();
  }
}
