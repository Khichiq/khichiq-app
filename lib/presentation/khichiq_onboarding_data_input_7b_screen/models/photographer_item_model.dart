import '../../../core/app_export.dart';/// This class is used in the [photographer_item_widget] screen.
class PhotographerItemModel {PhotographerItemModel({this.photographer, this.photographer1, this.id, }) { photographer = photographer  ?? ImageConstant.imgCamera;photographer1 = photographer1  ?? "Photographer";id = id  ?? ""; }

String? photographer;

String? photographer1;

String? id;

 }
