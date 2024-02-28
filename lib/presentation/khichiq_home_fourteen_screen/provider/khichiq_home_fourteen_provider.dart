import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_home_fourteen_model.dart';import '../models/lineeight1_item_model.dart';/// A provider class for the KhichiqHomeFourteenScreen.
///
/// This provider manages the state of the KhichiqHomeFourteenScreen, including the
/// current khichiqHomeFourteenModelObj

// ignore_for_file: must_be_immutable
class KhichiqHomeFourteenProvider extends ChangeNotifier {KhichiqHomeFourteenModel khichiqHomeFourteenModelObj = KhichiqHomeFourteenModel();

int sliderIndex = 0;

@override void dispose() { super.dispose(); } 
 }
