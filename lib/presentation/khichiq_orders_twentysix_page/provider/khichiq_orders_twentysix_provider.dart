import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_orders_twentysix_model.dart';
import '../models/khichiqorderstwentysix_item_model.dart';

/// A provider class for the KhichiqOrdersTwentysixPage.
///
/// This provider manages the state of the KhichiqOrdersTwentysixPage, including the
/// current khichiqOrdersTwentysixModelObj
class KhichiqOrdersTwentysixProvider extends ChangeNotifier {
  KhichiqOrdersTwentysixModel khichiqOrdersTwentysixModelObj =
      KhichiqOrdersTwentysixModel();

  @override
  void dispose() {
    super.dispose();
  }
}
