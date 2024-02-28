import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_orders_twentyseven_model.dart';
import '../models/khichiqorderstwentyseven_item_model.dart';

/// A provider class for the KhichiqOrdersTwentysevenPage.
///
/// This provider manages the state of the KhichiqOrdersTwentysevenPage, including the
/// current khichiqOrdersTwentysevenModelObj
class KhichiqOrdersTwentysevenProvider extends ChangeNotifier {
  KhichiqOrdersTwentysevenModel khichiqOrdersTwentysevenModelObj =
      KhichiqOrdersTwentysevenModel();

  @override
  void dispose() {
    super.dispose();
  }
}
