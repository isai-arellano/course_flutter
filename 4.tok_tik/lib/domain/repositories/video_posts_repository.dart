import 'package:tok_tik/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getFavoriteVideosByUser(int page);

  Future<List<VideoPost>> getTrendingVideoByPage(int page);
}
