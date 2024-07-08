// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:osscam_app/core/resource/handilling.dart';

import '../../../models/request/create_task_model.dart';
import '../service/create_Tasks.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';

class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  CreateTaskBloc() : super(CreateTaskInitial()) {
    on<CreateTasksEvent>(
      (event, emit) async {
        emit(LodingTasksState());
        ResultModel result =
            await CreateTasksServiceImp().creatTasks(event.createTasks);
        if (result is SuccessCreateTasksModel) {
          emit(SuccessCreateTasksState());
        } else {
          emit(ErrorCreateTasksState());
        }
      },
    );
  }
}
