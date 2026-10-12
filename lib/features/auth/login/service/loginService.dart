import 'package:dio/dio.dart';

import '../../../../core/Network/api_service.dart';
import '../../../../core/constant/api_constant.dart';
import '../model/token_model.dart';

class LoginService {
  ApiService apiService;
  LoginService(this.apiService);

  Future<TokenModel> login({
    required String email,
    required String password,
  }) async {
   final response= await apiService.dio.post(
     ApiConstant.authEndpointLogin,
      data: {
        'email': email,
        'password': password,
      },);
   TokenModel dataResponse=TokenModel.fromJson(response.data as Map<String, dynamic>);

   return dataResponse;

  }

}