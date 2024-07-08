// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'create_project_bloc.dart';

@immutable
sealed class CreateProjectEvent {}

class CreateNewProjectEvent extends CreateProjectEvent {
  final CreatProjectModel projectModel;
  CreateNewProjectEvent({
    required this.projectModel,
  });
}


