import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_home_default_three_model.dart';import '../models/baaea_item_model.dart';/// A provider class for the KhichiqHomeDefaultThreeScreen.
///
/// This provider manages the state of the KhichiqHomeDefaultThreeScreen, including the
/// current khichiqHomeDefaultThreeModelObj

// ignore_for_file: must_be_immutable
class KhichiqHomeDefaultThreeProvider extends ChangeNotifier {TextEditingController playController = TextEditingController();

TextEditingController playController1 = TextEditingController();

TextEditingController sayaliAniketController = TextEditingController();

KhichiqHomeDefaultThreeModel khichiqHomeDefaultThreeModelObj = KhichiqHomeDefaultThreeModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); playController.dispose(); playController1.dispose(); sayaliAniketController.dispose(); } 
 }
