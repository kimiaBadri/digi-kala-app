import 'package:dio/dio.dart';

class Authentication {
  final _dio = Dio(BaseOptions(baseUrl: 'http://startflutter.ir/api/'));

  Future<void> register(
      String username, String password, String passwordConfirm) async {
    final response = await _dio.post('collections/users/records', data: {
      'username': username,
      'password': password,
      'passwordConfirm': passwordConfirm
    });
    print('${response.statusCode}');
  }
}
