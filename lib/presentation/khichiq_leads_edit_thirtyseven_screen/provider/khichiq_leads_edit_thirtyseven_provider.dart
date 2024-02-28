import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_edit_thirtyseven_model.dart';/// A provider class for the KhichiqLeadsEditThirtysevenScreen.
///
/// This provider manages the state of the KhichiqLeadsEditThirtysevenScreen, including the
/// current khichiqLeadsEditThirtysevenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsEditThirtysevenProvider extends ChangeNotifier {TextEditingController followuponthController = TextEditingController();

KhichiqLeadsEditThirtysevenModel khichiqLeadsEditThirtysevenModelObj = KhichiqLeadsEditThirtysevenModel();

@override void dispose() { super.dispose(); followuponthController.dispose(); } 
 }
