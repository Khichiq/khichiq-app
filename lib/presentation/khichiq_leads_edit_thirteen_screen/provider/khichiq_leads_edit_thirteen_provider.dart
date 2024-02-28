import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_edit_thirteen_model.dart';import '../models/khichiqleadseditthirteen_item_model.dart';/// A provider class for the KhichiqLeadsEditThirteenScreen.
///
/// This provider manages the state of the KhichiqLeadsEditThirteenScreen, including the
/// current khichiqLeadsEditThirteenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsEditThirteenProvider extends ChangeNotifier {TextEditingController typehereController = TextEditingController();

KhichiqLeadsEditThirteenModel khichiqLeadsEditThirteenModelObj = KhichiqLeadsEditThirteenModel();

@override void dispose() { super.dispose(); typehereController.dispose(); } 
 }
