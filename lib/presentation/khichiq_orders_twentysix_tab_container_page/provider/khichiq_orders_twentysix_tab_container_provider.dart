import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_orders_twentysix_tab_container_model.dart';

/// A provider class for the KhichiqOrdersTwentysixTabContainerPage.
///
/// This provider manages the state of the KhichiqOrdersTwentysixTabContainerPage, including the
/// current khichiqOrdersTwentysixTabContainerModelObj
class KhichiqOrdersTwentysixTabContainerProvider extends ChangeNotifier {
  KhichiqOrdersTwentysixTabContainerModel
      khichiqOrdersTwentysixTabContainerModelObj =
      KhichiqOrdersTwentysixTabContainerModel();

  @override
  void dispose() {
    super.dispose();
  }
}
