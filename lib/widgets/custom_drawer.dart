import 'package:dashboard/models/drawer_item_model.dart';
import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_items_list_view.dart';
import 'package:dashboard/widgets/inActive_drawer_item.dart';
import 'package:dashboard/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, bottom: 15),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    SvgPicture.asset(Assets.imagesRectangle),
                    SvgPicture.asset(Assets.imagesGallery)
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  image: Assets.imagesAvatar3,
                  title: "Lekan Okeowo",
                  subtitle: "demo@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: const SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
              hasScrollBody: false,
              child: Column(children: [
                Expanded(
                  child: const SizedBox(height: 20),
                ),
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
              ]))
        ],
      ),
    );
  }
}
