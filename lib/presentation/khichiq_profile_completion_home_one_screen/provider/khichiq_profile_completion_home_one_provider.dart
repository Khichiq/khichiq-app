import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_profile_completion_home_one_model.dart';
import '../models/lineeight2_item_model.dart';

/// A provider class for the KhichiqProfileCompletionHomeOneScreen.
///
/// This provider manages the state of the KhichiqProfileCompletionHomeOneScreen, including the
/// current khichiqProfileCompletionHomeOneModelObj
class KhichiqProfileCompletionHomeOneProvider extends ChangeNotifier {
  KhichiqProfileCompletionHomeOneModel khichiqProfileCompletionHomeOneModelObj =
      KhichiqProfileCompletionHomeOneModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
