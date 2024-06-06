import 'package:dashboard/utils/app_images.dart';
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
              SizedBox(
                height:8,
              )
        ],
      ),
    );
  }
}
