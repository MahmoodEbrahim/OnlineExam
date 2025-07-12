import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import '../models.dart';

part 'auth_api_client.g.dart'; // ← هذا السطر لازم يكون بعد كل import

@RestApi(baseUrl: 'https://exam.elevateegy.com/api/v1')
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio, {String baseUrl}) = _AuthApiClient;

  @POST('/auth/signin')
  Future<UserModel> login(@Body() Map<String, dynamic> body);

  @POST('/auth/signup')
  Future<UserModel> signup(@Body() Map<String, dynamic> body);
}
