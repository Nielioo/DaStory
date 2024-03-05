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

  Future<Either<String, GetDetailStoryResponseModel>> getDetailStory(
      storyId) async {
    final token = await AuthLocal().getToken();
    try {
      final url = Uri.parse("${Const.endPoint}/stories/$storyId");
      final response = await http.get(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': 'Bearer $token',
        },
      );

      if (response.statusCode == 200) {
        return Right(
          getDetailStoryResponseModelFromJson(response.body),
        );
      }

      return Left(
        getDetailStoryResponseModelFromJson(response.body).message!,
      );
    } catch (e) {
      return Left('Error : $e');
    }
  }

  Future<Either<String, RegisterResponseModel>> postStory(
      {imageFile, description, lat = 0, lon = 0}) async {
    final token = await AuthLocal().getToken();
    final XFile image = imageFile;
    final bytes = await image.readAsBytes();
    try {
      final url = Uri.parse("${Const.endPoint}/stories");
      var request = http.MultipartRequest('POST', url);

      final multiPartFile = http.MultipartFile.fromBytes("photo", bytes,
          filename: imageFile.name);

      final Map<String, String> fields = {
        "description": description,
        "lat": lat.toString(),
        "lon": lon.toString(),
      };

      final Map<String, String> headers = {
        "Content-type": "multipart/form-data",
        'Authorization': 'Bearer $token',
      };

      request.files.add(multiPartFile);
      request.fields.addAll(fields);
      request.headers.addAll(headers);

      final http.StreamedResponse streamedResponse = await request.send();
      final int statusCode = streamedResponse.statusCode;

      final Uint8List responseList = await streamedResponse.stream.toBytes();
      final String responseData = String.fromCharCodes(responseList);

      if (statusCode == 201) {
        return Right(
          registerResponseModelFromJson(responseData),
        );
      }

      return const Left(
        "Failed to upload image.",
      );
    } catch (e) {
      return Left('Error : $e');
    }
  }
}
