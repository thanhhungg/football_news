import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:football_news_app/config/constants/app_option.dart';
import 'package:football_news_app/views/common/common_text.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_constants.dart';
import '../../../config/constants/assets.dart';
import '../../../models/player_model.dart';
import '../../../models/score_model.dart';

class DetailClubPage extends StatefulWidget {
  const DetailClubPage({super.key});

  @override
  State<DetailClubPage> createState() => _DetailClubPageState();
}

class _DetailClubPageState extends State<DetailClubPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Change length to 4 to match the number of tabs
      child: Scaffold(
        appBar: AppBar(
            iconTheme: const IconThemeData(color: AppColors.white),
            backgroundColor: AppColors.emeraldGreen,
            bottom: const TabBar(
              tabs: [
                Tab(
                    child: CommonText(
                  'Tổng quan',
                  textColor: Colors.white,
                  variant: Variant.mediums,
                  fontStyle: FontStyle.bold,
                )),
                Tab(
                    child: CommonText(
                  'Thứ hạng',
                  textColor: Colors.white,
                  variant: Variant.mediums,
                  fontStyle: FontStyle.bold,
                )),
                Tab(
                    child: CommonText(
                  'Cầu thủ',
                  textColor: Colors.white,
                  variant: Variant.mediums,
                  fontStyle: FontStyle.bold,
                )),
                Tab(
                    child: CommonText(
                  'Tiểu sử',
                  textColor: Colors.white,
                  variant: Variant.mediums,
                  fontStyle: FontStyle.bold,
                )),
              ],
            ),
            title: const CommonText(
              'Detail Club',
              textColor: Colors.white,
              fontStyle: FontStyle.bold,
              variant: Variant.h6,
            )),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
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
                    AppConstants.kSpacingItem20,
                    const Text(
                      'Câu lạc bộ Asenan',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    AppConstants.kSpacingItem10,
                    const Text(
                      'Về chúng tôi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    AppConstants.kSpacingItem10,
                    const Text(
                      'Câu lạc bộ Asenan là một cộng đồng của những người yêu thích thể dục và văn hóa thể thao. Chúng tôi cung cấp một môi trường thân thiện và động viên cho mọi người để tham gia vào các hoạt động thể dục và giúp họ duy trì sức khỏe tốt.',
                      style: TextStyle(fontSize: 16),
                    ),
                    AppConstants.kSpacingItem20,
                    const Text(
                      'Mục tiêu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    AppConstants.kSpacingItem10,
                    const Text(
                      'Mục tiêu của câu lạc bộ Asenan là tạo ra một cộng đồng lành mạnh và sôi nổi, thúc đẩy sự phát triển cá nhân và tinh thần thể thao. Chúng tôi mong muốn mỗi thành viên có thể tận hưởng cuộc sống một cách tích cực thông qua việc tham gia các hoạt động thể dục và văn hóa.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Column(
                  children: [
                    DataTable(
                      columnSpacing: 24,
                      columns: const [
                        DataColumn(label: Text('TT')),
                        DataColumn(label: Text('Đội')),
                        DataColumn(label: Text('ST')),
                        DataColumn(label: Text('T')),
                        DataColumn(label: Text('H')),
                        DataColumn(label: Text('B')),
                        DataColumn(label: Text('HS')),
                        DataColumn(label: Text('Đ')),
                      ],
                      rows: AppOption.teamDataList.map((teamData) {
                        return DataRow(cells: [
                          DataCell(Text('${teamData.position}')),
                          DataCell(
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage(teamData.avatarUrl),
                                ),
                                SizedBox(width: 8),
                                Text(teamData.teamName),
                              ],
                            ),
                          ),
                          DataCell(Text('${teamData.matchesPlayed}')),
                          DataCell(Text('${teamData.wins}')),
                          DataCell(Text('${teamData.draws}')),
                          DataCell(Text('${teamData.losses}')),
                          DataCell(Text('${teamData.goalsFor}')),
                          DataCell(Text('${teamData.goalsAgainst}')),
                        ]);
                      }).toList(),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: AppOption.players.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundImage:
                            AssetImage(AppOption.players[index].avatarUrl),
                      ),
                      title: Text(AppOption.players[index].name),
                      trailing: Text(AppOption.players[index].position),
                      subtitle: Text(
                          'Số áo: ${AppOption.players[index].jerseyNumber}'),
                      onTap: () {
                        // Xử lý sự kiện khi bấm vào một cầu thủ
                      },
                    );
                  },
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
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
                    AppConstants.kSpacingItem20,
                    const Text(
                      'Câu lạc bộ Asenan',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    AppConstants.kSpacingItem10,
                    const Text(
                      'Về chúng tôi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    AppConstants.kSpacingItem10,
                    const Text(
                      'Câu lạc bộ Asenan là một cộng đồng của những người yêu thích thể dục và văn hóa thể thao. Chúng tôi cung cấp một môi trường thân thiện và động viên cho mọi người để tham gia vào các hoạt động thể dục và giúp họ duy trì sức khỏe tốt.',
                      style: TextStyle(fontSize: 16),
                    ),
                    AppConstants.kSpacingItem20,
                    const Text(
                      'Mục tiêu',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    AppConstants.kSpacingItem10,
                    const Text(
                      'Mục tiêu của câu lạc bộ Asenan là tạo ra một cộng đồng lành mạnh và sôi nổi, thúc đẩy sự phát triển cá nhân và tinh thần thể thao. Chúng tôi mong muốn mỗi thành viên có thể tận hưởng cuộc sống một cách tích cực thông qua việc tham gia các hoạt động thể dục và văn hóa.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
