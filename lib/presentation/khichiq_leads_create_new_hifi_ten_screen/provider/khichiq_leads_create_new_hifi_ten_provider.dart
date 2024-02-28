import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_hifi_ten_model.dart';/// A provider class for the KhichiqLeadsCreateNewHifiTenScreen.
///
/// This provider manages the state of the KhichiqLeadsCreateNewHifiTenScreen, including the
/// current khichiqLeadsCreateNewHifiTenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewHifiTenProvider extends ChangeNotifier {TextEditingController nameController = TextEditingController();

TextEditingController mobileNumberController = TextEditingController();

KhichiqLeadsCreateNewHifiTenModel khichiqLeadsCreateNewHifiTenModelObj = KhichiqLeadsCreateNewHifiTenModel();

@override void dispose() { super.dispose(); nameController.dispose(); mobileNumberController.dispose(); } 
onSelected(dynamic value) { for (var element in khichiqLeadsCreateNewHifiTenModelObj.dropdownItemList) {element.isSelected = false; if (element.id == value.id) {element.isSelected = true;}} notifyListeners(); } 
 }
