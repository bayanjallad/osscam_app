// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:osscam_app/models/request/createProject_model.dart';
import 'package:osscam_app/core/resource/handilling.dart';

import '../service/createProject_service.dart';

part 'create_project_event.dart';
part 'create_project_state.dart';

class CreateProjectBloc extends Bloc<CreateProjectEvent, CreateProjectState> {
  CreateProjectBloc() : super(CreateProjectInitial()) {
    on<CreateNewProjectEvent>((event, emit) async {
      ResultModel resultModel =
          await CreateProjectServicImp().createProject(event.projectModel);
      if (resultModel is SuccessCreateProjectModel) {
        emit(SuccessCreateProjectState());
      } else {
        emit(ErrorInCreateProjectState());
      }
    });
  }
}


