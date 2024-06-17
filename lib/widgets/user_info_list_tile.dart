import 'package:dashboard/models/user_info_model.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({required this.userInfoModel});
  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFAFAFA),
      child: ListTile(
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(
          "${userInfoModel.title}",
          style: AppStyles.styleSemiBold16,
        ),
        subtitle: Text(
          "${userInfoModel.subtitle}",
          style: AppStyles.styleRegular12,
        ),
      ),
    );
  }
}
