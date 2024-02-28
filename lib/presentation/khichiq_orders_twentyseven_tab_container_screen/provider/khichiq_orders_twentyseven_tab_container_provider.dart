import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_orders_twentyseven_tab_container_model.dart';

/// A provider class for the KhichiqOrdersTwentysevenTabContainerScreen.
///
/// This provider manages the state of the KhichiqOrdersTwentysevenTabContainerScreen, including the
/// current khichiqOrdersTwentysevenTabContainerModelObj
class KhichiqOrdersTwentysevenTabContainerProvider extends ChangeNotifier {
  KhichiqOrdersTwentysevenTabContainerModel
      khichiqOrdersTwentysevenTabContainerModelObj =
      KhichiqOrdersTwentysevenTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
