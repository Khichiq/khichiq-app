import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_create_new_fortythree_model.dart';import 'package:country_pickers/country.dart';import 'package:country_pickers/utils/utils.dart';/// A provider class for the KhichiqLeadsCreateNewFortythreeBottomsheet.
///
/// This provider manages the state of the KhichiqLeadsCreateNewFortythreeBottomsheet, including the
/// current khichiqLeadsCreateNewFortythreeModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsCreateNewFortythreeProvider extends ChangeNotifier {TextEditingController phoneNumberController = TextEditingController();

TextEditingController nameController = TextEditingController();

KhichiqLeadsCreateNewFortythreeModel khichiqLeadsCreateNewFortythreeModelObj = KhichiqLeadsCreateNewFortythreeModel();

Country? selectedCountry;

bool checkboxActive = false;

@override void dispose() { super.dispose(); phoneNumberController.dispose(); nameController.dispose(); } 
void changeCountry(Country value) { selectedCountry = value; notifyListeners(); } 
void changeCheckBox1(bool value) { checkboxActive = value; notifyListeners(); } 
 }
