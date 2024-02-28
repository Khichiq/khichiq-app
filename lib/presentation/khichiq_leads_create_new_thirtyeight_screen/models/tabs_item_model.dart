import '../../../core/app_export.dart';/// This class is used in the [tabs_item_widget] screen.
class TabsItemModel {TabsItemModel({this.eventOne, this.isSelected, }) { eventOne = eventOne  ?? "Event 1";isSelected = isSelected  ?? false; }

String? eventOne;

bool? isSelected;

 }
