import 'package:flutter/material.dart';
import 'package:football_news_app/config/constants/app_constants.dart';
import 'package:football_news_app/views/page/authentication/login/login_page.dart';

import '../../../config/constants/app_colors.dart';
import '../../common/common_drawer.dart';
import '../../common/common_text.dart';

class ManageNotificationPage extends StatelessWidget {
  const ManageNotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.emeraldGreen,
        title: const CommonText(
          fontStyle: FontStyle.bold,
          'News',
          textColor: AppColors.white,
          variant: Variant.h6,
        ),
      ),
      drawer: const CommonDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CommonText(
              'Nhận thông báo ',
              textColor: AppColors.black,
              variant: Variant.h6,
              fontStyle: FontStyle.bold,
            ),
            AppConstants.kSpacingItem8,
            Row(
              children: [
                Checkbox(
                  activeColor: AppColors.emeraldGreen,
                  value: true,
                  onChanged: (value) {},
                ),
                const CommonText(
                  'Nhận tin nóng',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                ),
              ],
            ),
            Row(
              children: [
                Checkbox(
                  activeColor: AppColors.emeraldGreen,
                  value: true,
                  onChanged: (value) {},
                ),
                const CommonText(
                  'Nhận tin từ Ban quản trị',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                ),
              ],
            ),
            const CommonText(
              'Cỡ chữ nội dung bài viết',
              textColor: AppColors.black,
              variant: Variant.h6,
            ),
            const CommonText(
              'Mặc định',
              textColor: AppColors.emeraldGreen,
              variant: Variant.h6,
            ),
            Row(
              children: [
                const CommonText(
                  'Rung khi nhận thông báo',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                ),
                Spacer(),
                Switch(
                  activeColor: AppColors.emeraldGreen,
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              children: [
                const CommonText(
                  'Âm thanh cảnh báo',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                ),
                Spacer(),
                Switch(
                  activeColor: AppColors.emeraldGreen,
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              children: [
                const CommonText(
                  'Chế độ đọc ban đêm',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                ),
                Spacer(),
                Switch(
                  activeColor: AppColors.emeraldGreen,
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: const CommonText(
                      'Đăng xuất',
                      textColor: Colors.red,
                      variant: Variant.h6,
                      fontStyle: FontStyle.bold,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
