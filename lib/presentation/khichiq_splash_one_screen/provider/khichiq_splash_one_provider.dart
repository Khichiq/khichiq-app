import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_splash_one_model.dart';/// A provider class for the KhichiqSplashOneScreen.
///
/// This provider manages the state of the KhichiqSplashOneScreen, including the
/// current khichiqSplashOneModelObj

// ignore_for_file: must_be_immutable
class KhichiqSplashOneProvider extends ChangeNotifier {KhichiqSplashOneModel khichiqSplashOneModelObj = KhichiqSplashOneModel();

@override void dispose() { super.dispose(); } 
 }
