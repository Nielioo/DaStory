part of '../../datas.dart';

class StoriesRemote {
  Future<Either<String, GetStoriesResponseModel>> getStroies() async {
    final token = await AuthLocal().getToken();
    try {
      final url = Uri.parse("${Const.endPoint}/stories");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(
          getStoriesResponseModelFromJson(response.body),
        );
      }

      return Left(
        getStoriesResponseModelFromJson(response.body).message,
      );
    } catch (e) {
      return Left('Error : $e');
    }
  }
}