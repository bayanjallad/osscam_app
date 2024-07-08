// ignore_for_file: avoid_print, file_names

import 'package:dio/dio.dart';

import 'package:osscam_app/core/resource/handilling.dart';
import 'package:osscam_app/core/service/core_service.dart';
import '../../../main.dart';
import '../../../models/request/create_task_model.dart';

abstract class CreateTasksService extends CoreService {
  String baseUrl =
      "https://projects-management-system.onrender.com/api/v1/tasks";
  //! رح ابعت ليستة من التاسكات
  Future<ResultModel> creatTasks(List<CreateTaskModel> createTasks);
}

class CreateTasksServiceImp extends CreateTasksService {
  @override
  Future<ResultModel> creatTasks(List<CreateTaskModel> createTasks) async {
    //! هي وقت بدي ابعت بال api  هون عم ابعت ليستا مابقدر بالتو جيسن والتو ماب ما بتزبط لانو بيعملا على قيمة وحدة بس هون عندي ليستا ماببات
    // final lsitOfData = json.encoder.convert(CreateTaskModel);
    List<Map<String, dynamic>> dataToSend = [];
    // ignore: avoid_function_literals_in_foreach_calls
    createTasks.forEach((element) {
      dataToSend.add(element.toMap());
    });
    try {
      response = await dio.post(
        baseUrl,
        data: dataToSend,
        options: Options(
          headers: {"Authorization": "Bearer ${box.get("accessToken")}"},
        ),
      );

      print(response.statusCode);
      print(response.data);
      if (response.statusCode == 200) {
        return SuccessCreateTasksModel(
            successMessage: "Succes in create Tasks");
      } else {
        return ErrorModel(errorMessage: "There is an Error");
      }
    } on DioException catch (e) {
      print(e);

      return ExceptionModel(exceptionMessage: e.message.toString());
    }
  }
}
