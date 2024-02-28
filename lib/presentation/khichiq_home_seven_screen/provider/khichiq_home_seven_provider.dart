import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_home_seven_model.dart';
import '../models/lineeight_item_model.dart';

/// A provider class for the KhichiqHomeSevenScreen.
///
/// This provider manages the state of the KhichiqHomeSevenScreen, including the
/// current khichiqHomeSevenModelObj
class KhichiqHomeSevenProvider extends ChangeNotifier {
  KhichiqHomeSevenModel khichiqHomeSevenModelObj = KhichiqHomeSevenModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
