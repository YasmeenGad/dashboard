import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: ShapeDecoration(
            image:
                DecorationImage(image: AssetImage(Assets.imagesCardBackground)),
            color: const Color(0xFF4EB7F2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.only(right: 31, left: 42, top: 16),
              title: Text(
                'Name card',
                style:
                    AppStyles.styleRegular16.copyWith(color: Color(0xFFFFFFFF)),
              ),
              subtitle: Text(
                'Syah Bandi',
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.imagesGallery),
            ),
            const Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '0918 8124 0042 8129',
                    style: AppStyles.styleSemiBold20.copyWith(color: Colors.white),
                  ),
                  Text('12/20 - 124',style: AppStyles.styleRegular16.copyWith(color: Colors.white),),
                ],
              ),
            ),
            const SizedBox(
              height: 54 - 28,
            ),
          ],
        ),
      ),
    );
  }
}
