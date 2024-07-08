part of 'create_project_bloc.dart';

@immutable
sealed class CreateProjectState {}

final class CreateProjectInitial extends CreateProjectState {}

class SuccessCreateProjectState extends CreateProjectState{}

class ErrorInCreateProjectState extends CreateProjectState{}

 