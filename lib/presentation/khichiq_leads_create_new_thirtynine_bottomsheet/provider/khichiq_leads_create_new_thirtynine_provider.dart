import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/khichiq_leads_create_new_thirtynine_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/utils/utils.dart';

/// A provider class for the KhichiqLeadsCreateNewThirtynineBottomsheet.
///
/// This provider manages the state of the KhichiqLeadsCreateNewThirtynineBottomsheet, including the
/// current khichiqLeadsCreateNewThirtynineModelObj
class KhichiqLeadsCreateNewThirtynineProvider extends ChangeNotifier {
  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController nameController = TextEditingController();

  KhichiqLeadsCreateNewThirtynineModel khichiqLeadsCreateNewThirtynineModelObj =
      KhichiqLeadsCreateNewThirtynineModel();

  Country? selectedCountry;

  bool checkboxActive = false;

  @override
  void dispose() {
    super.dispose();
    phoneNumberController.dispose();
    nameController.dispose();
  }

  void changeCountry(Country value) {
    selectedCountry = value;
    notifyListeners();
  }

  void changeCheckBox1(bool value) {
    checkboxActive = value;
    notifyListeners();
  }
}
