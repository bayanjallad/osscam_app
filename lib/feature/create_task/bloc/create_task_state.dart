part of 'create_task_bloc.dart';

@immutable
sealed class CreateTaskState {}

final class CreateTaskInitial extends CreateTaskState {}

class SuccessCreateTasksState extends CreateTaskState {}

class ErrorCreateTasksState extends CreateTaskState {}

class LodingTasksState extends CreateTaskState {}
