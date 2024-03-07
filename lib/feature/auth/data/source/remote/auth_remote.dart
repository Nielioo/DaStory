part of '../../datas.dart';

class AuthRemote {
  Future<Either<String, RegisterResponseModel>> register(
      RegisterRequestModel requestModel) async {
    try {
      final url = Uri.parse("${Const.endPoint}/register");
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(requestModel),
      );

      if (response.statusCode == 201) {
        return Right(
          registerResponseModelFromJson(response.body),
        );
      }

      return Left(
        registerResponseModelFromJson(response.body).message!,
      );
    } catch (e) {
      return Left('Error : $e');
    }
  }

  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel requestModel) async {
    final pref = AuthLocal();

    try {
      final url = Uri.parse('${Const.endPoint}/login');
      final response = await http.post(
        url,
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(requestModel),
      );

      if (response.statusCode == 200) {
        await pref.saveAuthData(
            LoginResponseModel.fromJson(jsonDecode(response.body)));
        return Right(loginResponseModelFromJson(response.body));
      }

      return Left(
          'Failed ${loginResponseModelFromJson(response.body).message}');
    } catch (e) {
      return Left('Error : $e');
    }
  }
}
