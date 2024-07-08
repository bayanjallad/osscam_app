// ignore_for_file: unused_local_variable, depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:osscam_app/core/resource/handilling.dart';

import '../../../models/responce/getProjectModel.dart';
import '../../../models/responce/getTaskModel.dart';
import '../service/get_Tasks_project.dart';

part 'successget_event.dart';
part 'successget_state.dart';

class SuccessgetBloc extends Bloc<SuccessgetEvent, SuccessgetState> {
  SuccessgetBloc() : super(SuccessgetInitial()) {
    on<SuccesGetProjectEvent>(
      (event, emit) async {
        emit(LoadingState());
        ResultModel resultgetProject =
            await GetTaskandProjectServiceImp().getProjects();
            if (resultgetProject is SuccessGetProjectModel ) {

              
              emit(SuccessgetProjectState(getProjectModel:resultgetProject.getdata));
            }else {
              emit(ErrorState());
            }
      },
    );
    on<SuccesGetTasksEvent>(
      (event, emit) async {
        emit(LoadingState());
        ResultModel resultgetTasks =
            await GetTaskandProjectServiceImp().getAllTasks();
        if (resultgetTasks is Listof<GetTasksProjectModel>) {
          emit(SuccessGetTasksState(getTasksModel: resultgetTasks.data));
        } else {
          emit(ErrorState());
        }
      },
    );
  }
}
