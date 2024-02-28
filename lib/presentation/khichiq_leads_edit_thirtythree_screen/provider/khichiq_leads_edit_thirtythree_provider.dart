import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_edit_thirtythree_model.dart';/// A provider class for the KhichiqLeadsEditThirtythreeScreen.
///
/// This provider manages the state of the KhichiqLeadsEditThirtythreeScreen, including the
/// current khichiqLeadsEditThirtythreeModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsEditThirtythreeProvider extends ChangeNotifier {TextEditingController followuponthController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsEditThirtythreeModel khichiqLeadsEditThirtythreeModelObj = KhichiqLeadsEditThirtythreeModel();

@override void dispose() { super.dispose(); followuponthController.dispose(); typehereController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsEditThirtythreeModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
