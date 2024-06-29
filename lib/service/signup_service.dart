import 'package:dio/dio.dart';
import 'package:osscam_app/model/handilling.dart';
import 'package:osscam_app/service/core_service.dart';

import '../model/signup_model.dart';

abstract class SignupService extends coreService {
  String baseUrl = "https://projects-management-system.onrender.com-ProdENV/api/v1/auth/register";
  
  Future<ResultModel> signup(UserModel user);
}

class SignupServiceImpl extends SignupService {
  @override
  Future<ResultModel> signup(UserModel user) async {
  print("ff");
  print(user.toMap());
  print("$baseUrl");


    try {
    response = await dio.post(baseUrl,data: user.toMap());
      print(response.statusCode);
      if (response.statusCode == 200) {
        print("iam in success");
        
        return SuccessSignUpModel(successMessage: "Success SignUp");
      } else {
        print("iam in error");
        return ErrorModel(errorMessage: "there is error");
      }
    } on DioException catch (e) {
      print("iam in exception");
      return ErrorModel(errorMessage: e.error.toString());
    }
  }
}
