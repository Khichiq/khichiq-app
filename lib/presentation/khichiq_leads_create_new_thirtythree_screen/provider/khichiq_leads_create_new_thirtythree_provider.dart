import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_thirtythree_model.dart';/// A provider class for the KhichiqLeadsCreateNewThirtythreeScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewThirtythreeScreen, including the
/// current khichiqLeadsCreateNewThirtythreeModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewThirtythreeProvider extends ChangeNotifier {TextEditingController mobileNumberController = TextEditingController();

TextEditingController nameController = TextEditingController();

TextEditingController nameController1 = TextEditingController();

TextEditingController nameController2 = TextEditingController();

TextEditingController dateController = TextEditingController();

KhichiqLeadsCreateNewThirtythreeModel khichiqLeadsCreateNewThirtythreeModelObj = KhichiqLeadsCreateNewThirtythreeModel();

@override void dispose() { super.dispose(); mobileNumberController.dispose(); nameController.dispose(); nameController1.dispose(); nameController2.dispose(); dateController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewThirtythreeModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
