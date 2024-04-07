import 'package:flutter/material.dart';
import 'package:football_news_app/views/page/statistics/statistics_page.dart';

import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_constants.dart';
import '../../../../config/constants/assets.dart';
import '../../../common/common_text.dart';

class ScoreWidget extends StatelessWidget {
  const ScoreWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StatisticsPage(),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: AppColors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const CommonText('FT',
                  variant: Variant.small, textColor: AppColors.black),
              const Spacer(),
              const CommonText('Luton Town',
                  variant: Variant.small, textColor: AppColors.black),
              AppConstants.kSpacingItemW8,
              const CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(Assets.imgNews2),
              ),
              const Spacer(),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.gray49E,
                ),
                child: const Center(
                  child: CommonText(
                    '2-3',
                    textColor: AppColors.black,
                    variant: Variant.small,
                    fontStyle: FontStyle.bold,
                  ),
                ),
              ),
              const Spacer(),
              AppConstants.kSpacingItemW8,
              const CircleAvatar(
                radius: 12,
                backgroundImage: AssetImage(Assets.imgNews2),
              ),
              AppConstants.kSpacingItemW8,
              const CommonText('Luton Town',
                  variant: Variant.small, textColor: AppColors.black),
              const Spacer(),
              Container(
                width: 40,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: AppColors.gray49E,
                ),
                child: const Center(
                  child: CommonText(
                    '2-3',
                    textColor: AppColors.black,
                    variant: Variant.small,
                    fontStyle: FontStyle.bold,
                  ),
                ),
              ),
              AppConstants.kSpacingItemW4,
            ],
          ),
        ),
      ),
    );
  }
}
