import 'package:flutter/material.dart';
import 'package:football_news_app/config/constants/app_constants.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/assets.dart';
import '../../common/common_drawer.dart';
import '../../common/common_text.dart';
import 'detail_club_page.dart';

class ClubPage extends StatefulWidget {
  const ClubPage({Key? key}) : super(key: key);

  @override
  _ClubPageState createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  TextEditingController _searchController = TextEditingController();
  List<String> _clubData = [
    'Manchester United',
    'Liverpool',
    'Barcelona',
    'Real Madrid'
  ];
  List<String> _filteredClubs = [];

  @override
  void initState() {
    super.initState();
    _filteredClubs.addAll(_clubData);
  }

  void _filterClubs(String query) {
    _filteredClubs.clear();
    if (query.isNotEmpty) {
      for (var club in _clubData) {
        if (club.toLowerCase().contains(query.toLowerCase())) {
          _filteredClubs.add(club);
        }
      }
    } else {
      _filteredClubs.addAll(_clubData);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.white),
        backgroundColor: AppColors.emeraldGreen,
        title: const CommonText(
          'Câu lạc bộ',
          textColor: AppColors.white,
          variant: Variant.h6,
        ),
      ),
      drawer: const CommonDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CommonText(
              'Chọn câu lạc bộ',
              textColor: AppColors.black,
              variant: Variant.h6,
              fontStyle: FontStyle.bold,
            ),
            AppConstants.kSpacingItem16,
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Icon(Icons.search),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                    ),
                    child: TextField(
                      controller: _searchController,
                      onChanged: _filterClubs,
                      decoration: const InputDecoration(
                        hintText: 'Tìm kiếm câu lạc bộ',
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 14.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            AppConstants.kSpacingItem16,
            Expanded(
              child: ListView.builder(
                itemCount: _filteredClubs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: CommonText(
                      _filteredClubs[index],
                      textColor: AppColors.black,
                      variant: Variant.h6,
                    ),
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage(Assets.imgNews2),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DetailClubPage(),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
