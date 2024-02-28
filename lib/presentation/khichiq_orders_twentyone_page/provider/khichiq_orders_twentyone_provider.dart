import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_orders_twentyone_model.dart';
import '../models/khichiqorderstwentyone_item_model.dart';

/// A provider class for the KhichiqOrdersTwentyonePage.
///
/// This provider manages the state of the KhichiqOrdersTwentyonePage, including the
/// current khichiqOrdersTwentyoneModelObj
class KhichiqOrdersTwentyoneProvider extends ChangeNotifier {
  KhichiqOrdersTwentyoneModel khichiqOrdersTwentyoneModelObj =
      KhichiqOrdersTwentyoneModel();

  @override
  void dispose() {
    super.dispose();
  }
}
