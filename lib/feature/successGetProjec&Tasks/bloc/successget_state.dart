// ignore_for_file: must_be_immutable

part of 'successget_bloc.dart';

@immutable
sealed class SuccessgetState {}

final class SuccessgetInitial extends SuccessgetState {}

class SuccessgetProjectState extends SuccessgetState {
  GetProjectModel getProjectModel;
  SuccessgetProjectState({
    required this.getProjectModel,
  });
}

class SuccessGetTasksState extends SuccessgetState {
  List<GetTasksProjectModel> getTasksModel;
  SuccessGetTasksState({
    required this.getTasksModel,
  });
}

class LoadingState extends SuccessgetState {}

class ErrorState extends SuccessgetState {}
