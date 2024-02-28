import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_home_default_four_model.dart';
import '../models/baaea2_item_model.dart';

/// A provider class for the KhichiqHomeDefaultFourScreen.
///
/// This provider manages the state of the KhichiqHomeDefaultFourScreen, including the
/// current khichiqHomeDefaultFourModelObj
class KhichiqHomeDefaultFourProvider extends ChangeNotifier {
  TextEditingController playController = TextEditingController();

  TextEditingController sayaliAniketController = TextEditingController();

  KhichiqHomeDefaultFourModel khichiqHomeDefaultFourModelObj =
      KhichiqHomeDefaultFourModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
    playController.dispose();
    sayaliAniketController.dispose();
  }
}
