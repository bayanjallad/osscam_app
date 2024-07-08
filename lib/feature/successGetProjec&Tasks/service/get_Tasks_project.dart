// ignore_for_file: unnecessary_brace_in_string_interps, file_names, avoid_print

import 'package:dio/dio.dart';
import 'package:osscam_app/main.dart';
import 'package:osscam_app/core/service/core_service.dart';

import '../../../core/resource/handilling.dart';
import '../../../models/responce/getProjectModel.dart';
import '../../../models/responce/getTaskModel.dart';
import '../../create_project/service/createProject_service.dart';

abstract class GetTaskandProjectService extends CoreService {
  String basurlproj = "https://projects-management-system.onrender.com/api/v1/projects/${id_project.toString()}";
  String basUrlTask =
      "https://projects-management-system.onrender.com/api/v1/tasks/tasks-by-project/${id_project.toString()}";
  Future<ResultModel> getProjects();
  Future<ResultModel> getAllTasks();
}

class GetTaskandProjectServiceImp extends GetTaskandProjectService {
  @override
  Future<ResultModel> getAllTasks() async {
    print(box.get("accessToken"));
    print(basUrlTask);
    try {
      response = await dio.get(
        basUrlTask,
        options: Options(
          headers: {"Authorization": "Bearer ${box.get("accessToken")}"},
        ),
      );
      print("8888888888888888888888888888");
      print(basUrlTask);
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 200) {
        return Listof<GetTasksProjectModel>(
          data: List.generate(
            response.data.length,
            (index) => GetTasksProjectModel.fromJson(
              response.data[index],
            ),
            
          ),
          
        );
      } else {
        return ErrorModel(errorMessage: "there is an Error");
      }
    } on DioException catch (e) {
      return ExceptionModel(exceptionMessage: e.error.toString());
    }
  }

  @override
  Future<ResultModel> getProjects() async {
    try {
      response = await dio.get(
        basurlproj,
        options: Options(
          headers: {"Authorization": "Bearer ${box.get("accessToken")}"},
        ),
      );
      print("66666666666666666666666666666666666666");
      print(basurlproj);
      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 200) {
        return GetProjectModel.fromJson(response.data);
      } else {
        return ErrorModel(errorMessage: "there is an Error");
      }
    } on DioException catch (e) {
      return ExceptionModel(exceptionMessage: e.error.toString());
    }
  }
}
