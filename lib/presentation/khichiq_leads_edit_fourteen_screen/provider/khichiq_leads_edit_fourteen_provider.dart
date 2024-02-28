import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_edit_fourteen_model.dart';/// A provider class for the KhichiqLeadsEditFourteenScreen.
///
/// This provider manages the state of the KhichiqLeadsEditFourteenScreen, including the
/// current khichiqLeadsEditFourteenModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsEditFourteenProvider extends ChangeNotifier {TextEditingController frameSeventyFiveController = TextEditingController();

TextEditingController typehereController = TextEditingController();

KhichiqLeadsEditFourteenModel khichiqLeadsEditFourteenModelObj = KhichiqLeadsEditFourteenModel();

@override void dispose() { super.dispose(); frameSeventyFiveController.dispose(); typehereController.dispose(); } 
 }
