import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_news_app/config/constants/app_colors.dart';
import 'package:football_news_app/config/constants/app_constants.dart';
import 'package:football_news_app/config/constants/assets.dart';
import 'package:football_news_app/views/common/common_drawer.dart';
import 'package:football_news_app/views/common/common_text.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.emeraldGreen,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Icon(
                        Icons.home_outlined,
                        color: AppColors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  AppConstants.kSpacingItemW8,
                  const CommonText(
                    'Tin tức',
                    textColor: AppColors.black,
                    variant: Variant.h6,
                    fontStyle: FontStyle.bold,
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(top: 16),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: AppColors.white,
                        ),
                        child: Column(
                          children: [
                            index == 0 ? const VIteamNew() : const HIteamNew(),
                          ],
                        ),
                      );
                    }),
              ),
            ],
          ),
        ));
  }
}

class VIteamNew extends StatelessWidget {
  const VIteamNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/news_detail', arguments: {
          'image': Assets.imgNews,
          'title':
              'Đội tuyển nữ Việt Nam thắng 3-0 trước đội tuyển nữ Singapore',
          'content':
              'Đội tuyển nữ Việt Nam thắng 3-0 trước đội tuyển nữ Singapore',
        });
      },
      child: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: const DecorationImage(
                image: AssetImage(
                  Assets.imgNews,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CommonText(
                  'Đội tuyển nữ Việt Nam thắng 3-0 trước đội tuyển nữ Singapore',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                  fontStyle: FontStyle.bold,
                ),
                AppConstants.kSpacingItem8,
                const CommonText(
                  '28 phút trước',
                  textColor: AppColors.black,
                  variant: Variant.h6,
                  fontStyle: FontStyle.regular,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HIteamNew extends StatelessWidget {
  const HIteamNew({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: MediaQuery.of(context).size.width / 3,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: const DecorationImage(
              image: AssetImage(Assets.imgNews2),
              fit: BoxFit.cover,
            ),
          ),
          height: 100,
        ),
        AppConstants.kSpacingItemW8,
        const Flexible(
          child: CommonText(
            'Đội tuyển nữ Việt Nam thắng 3-0 trước đội tuyển nữ Singapore',
            textColor: AppColors.black,
            variant: Variant.h6,
            fontStyle: FontStyle.bold,
            style: TextStyle(),
          ),
        ),
      ],
    );
  }
}
