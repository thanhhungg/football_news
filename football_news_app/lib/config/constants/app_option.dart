import '../../models/comment_model.dart';
import '../../models/player_model.dart';
import '../../models/score_model.dart';
import 'assets.dart';

class AppOption {
  static List<Comment> comments = [
    Comment(
      userName: 'Nguyễn Văn A',
      text: 'Bình luận 1',
      image: Assets.imgNews2,
    ),
    Comment(
      userName: 'Nguyễn Văn B',
      text: 'Bình luận 2',
      image: Assets.imgNews2,
    ),
    Comment(
      userName: 'Nguyễn Văn C',
      text: 'Bình luận 3',
      image: Assets.imgNews2,
    ),
  ];
  static final List<Player> players = [
    Player(
        name: "Ronaldo",
        position: "Tiền đạo",
        jerseyNumber: "7",
        avatarUrl: Assets.imgNews2),
    Player(
        name: "Messi",
        position: "Tiền đạo",
        jerseyNumber: "10",
        avatarUrl: Assets.imgNews2),
    Player(
        name: "Neymar",
        position: "Tiền đạo",
        jerseyNumber: "11",
        avatarUrl: Assets.imgNews3),
    Player(
        name: "Xavi",
        position: "Tiền vệ",
        jerseyNumber: "6",
        avatarUrl: Assets.imgNews2),
    Player(
        name: "Iniesta",
        position: "Tiền vệ",
        jerseyNumber: "8",
        avatarUrl: Assets.imgNews3),
    // Thêm các cầu thủ khác ở đây
  ];
  static final List<ScoreModel> teamDataList = [
    ScoreModel(
      position: 1,
      teamName: 'Arshik',
      matchesPlayed: 29,
      wins: 5,
      draws: 3,
      losses: 2,
      goalsFor: 15,
      goalsAgainst: 10,
      avatarUrl: Assets.imgNews,
    ),
    ScoreModel(
      position: 2,
      teamName: 'Team 2',
      matchesPlayed: 10,
      wins: 5,
      draws: 3,
      losses: 2,
      goalsFor: 15,
      goalsAgainst: 10,
      avatarUrl: Assets.imgNews2,
    ),
    ScoreModel(
      position: 2,
      teamName: 'Team 2',
      matchesPlayed: 10,
      wins: 5,
      draws: 3,
      losses: 2,
      goalsFor: 15,
      goalsAgainst: 10,
      avatarUrl: Assets.imgNews2,
    ),
    ScoreModel(
      position: 2,
      teamName: 'Team 2',
      matchesPlayed: 10,
      wins: 5,
      draws: 3,
      losses: 2,
      goalsFor: 15,
      goalsAgainst: 10,
      avatarUrl: Assets.imgNews2,
    ),
  ];
}
