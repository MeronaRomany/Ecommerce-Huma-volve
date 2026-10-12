
import '../../../../core/Network/api_service.dart';
import '../../../../core/constant/api_constant.dart';
import '../model/signup_req_model.dart';
import '../model/userModel.dart';

class SignupService {
  ApiService apiService;
  SignupService(this.apiService);

  Future<UserModel> signUp({
    required SignupReqModel signupReqModel
  }) async {
    final response= await apiService.dio.post(
      ApiConstant.userEndpointSignUp,
      data: {
        "name":signupReqModel.name,
        'email': signupReqModel.email,
        'password': signupReqModel.password,
        "avatar": "https://i.imgur.com/LDOO4Qs.jpg",
      },);
    UserModel dataResponse=UserModel.fromJson(response.data as Map<String, dynamic>);

    return dataResponse;

  }

}