import '../../../core/app_export.dart';/// This class is used in the [candidphotographer_item_widget] screen.
class CandidphotographerItemModel {CandidphotographerItemModel({this.candidPhotographer, this.candidPhotographer1, this.candidPhotographer2, this.id, }) { candidPhotographer = candidPhotographer  ?? ImageConstant.imgCheckboxActive;candidPhotographer1 = candidPhotographer1  ?? ImageConstant.imgCamera;candidPhotographer2 = candidPhotographer2  ?? "Candid Photographer";id = id  ?? ""; }

String? candidPhotographer;

String? candidPhotographer1;

String? candidPhotographer2;

String? id;

 }
