import 'package:flutter/material.dart';import '../../../core/app_export.dart';import '../models/khichiq_leads_edit_twentyfour_model.dart';/// A provider class for the KhichiqLeadsEditTwentyfourScreen.
///
/// This provider manages the state of the KhichiqLeadsEditTwentyfourScreen, including the
/// current khichiqLeadsEditTwentyfourModelObj

// ignore_for_file: must_be_immutable
class KhichiqLeadsEditTwentyfourProvider extends ChangeNotifier {TextEditingController dateController = TextEditingController();

KhichiqLeadsEditTwentyfourModel khichiqLeadsEditTwentyfourModelObj = KhichiqLeadsEditTwentyfourModel();

@override void dispose() { super.dispose(); dateController.dispose(); } 
 }
