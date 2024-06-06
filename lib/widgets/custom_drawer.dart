import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:dashboard/widgets/drawer_items_list_view.dart';
import 'package:dashboard/widgets/inActive_drawer_item.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
              image: Assets.imagesAvatar3),
          const SizedBox(
            height: 8,
          ),
          const DrawerItemListView(),
          const Expanded(child: SizedBox()),
          const InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: "Setting system", image: Assets.imagesSettings),
          ),
          const InActiveDrawerItem(
            drawerItemModel: DrawerItemModel(
                title: "Logout account", image: Assets.imagesLogout),
          ),
          const SizedBox(
            height: 48,
          ),
        ],
      ),
    );
  }
}
