// ignore_for_file: non_constant_identifier_names, file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:osscam_app/core/resource/handilling.dart';
import 'package:osscam_app/core/service/core_service.dart';
import '../../../main.dart';
import '../../../models/request/createProject_model.dart';
 int? id_project;
abstract class CreateProjectServic extends CoreService {
  String baseUrl =
      "https://projects-management-system.onrender.com/api/v1/projects";

  Future<ResultModel> createProject(CreatProjectModel projectModel);
}

class CreateProjectServicImp extends CreateProjectServic {
  @override
  Future<ResultModel> createProject(CreatProjectModel projectModel) async {
    try {
      print(box.get("accessToken") + "jjjjjjjjjjjjjjjjjjj");
      print(projectModel.toMap());
      print(baseUrl);
      response = await dio.post(baseUrl,
          data: projectModel.toMap(),
          options: Options(
              headers: {"Authorization": 'Bearer ${box.get("accessToken")}'}));
      print(response.data);

      print(response.statusCode);
      if (response.statusCode == 200) {
       id_project=response.data["id"];
        return SuccessCreateProjectModel(
            successMessage: "SuccessCreateProjectModel");
      } else {
        return ErrorModel(errorMessage: "there is no internet");
      }
    } on DioException catch (e) {
      return ExceptionModel(exceptionMessage: e.message.toString());
    }
  }
}
