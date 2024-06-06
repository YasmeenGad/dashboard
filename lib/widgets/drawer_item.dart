import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/widgets/active_item.dart';
import 'package:dashboard/widgets/inActive_drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({required this.isActive, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(
            drawerItemModel: drawerItemModel,
          )
        : InActiveDrawerItem(drawerItemModel: drawerItemModel);
  }
}
