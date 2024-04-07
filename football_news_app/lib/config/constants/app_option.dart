import '../../models/comment_model.dart';
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
}
