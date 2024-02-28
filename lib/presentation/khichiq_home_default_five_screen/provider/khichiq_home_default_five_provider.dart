import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_home_default_five_model.dart';import '../models/khichiqhomedefaultfive_item_model.dart';import '../models/baaea1_item_model.dart';/// A provider class for the KhichiqHomeDefaultFiveScreen.
///
/// This provider manages the state of the KhichiqHomeDefaultFiveScreen, including the
/// current khichiqHomeDefaultFiveModelObj

// ignore_for_file: must_be_immutable
class KhichiqHomeDefaultFiveProvider extends ChangeNotifier {TextEditingController sayaliAniketController = TextEditingController();

KhichiqHomeDefaultFiveModel khichiqHomeDefaultFiveModelObj = KhichiqHomeDefaultFiveModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); sayaliAniketController.dispose(); } 
 }
