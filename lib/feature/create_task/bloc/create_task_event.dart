// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'create_task_bloc.dart';

@immutable
sealed class CreateTaskEvent {}

// ignore: must_be_immutable
class CreateTasksEvent extends CreateTaskEvent {
  List<CreateTaskModel> createTasks;  
  CreateTasksEvent({
    required this.createTasks,
  });
}
