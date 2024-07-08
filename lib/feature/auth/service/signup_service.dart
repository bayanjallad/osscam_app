// ignore_for_file: avoid_print, unnecessary_string_interpolations

import 'package:dio/dio.dart';
import 'package:osscam_app/core/resource/handilling.dart';
import 'package:osscam_app/core/service/core_service.dart';
import '../../../main.dart';
import '../../../models/request/signup_model.dart';

abstract class SignupService extends CoreService {
  String baseUrl =
      "https://projects-management-system.onrender.com/api/v1/auth/register";

  Future<ResultModel> signup(UserModel user);
}

class SignupServiceImpl extends SignupService {
  @override
  Future<ResultModel> signup(user) async {
    print("ff");
    print(user.toMap());
    print("$baseUrl");
    

    try {
      print("sdgggggggggg");
      response = await dio.post(baseUrl, data: user.toMap());
      print(response.statusCode);
      if (response.statusCode == 200) {
        box.put("accessToken", response.data["access_token"]);
        print(box.get("accessToken"));
        // String accessToken = response.data["access_token"];
        // core
        //     .get<SharedPreferences>()
        //     .setString("token", response.data["accessToken"]);

        return SuccessSignUpModel(successMessage: "Success SignUp");
      } else {
        return ErrorModel(errorMessage: "there is error");
      }
    } on DioException catch (e) {
      print(e);
      return ExceptionModel(exceptionMessage: e.error.toString());
    }
  }
}


