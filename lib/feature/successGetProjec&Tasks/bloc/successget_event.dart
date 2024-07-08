part of 'successget_bloc.dart';

@immutable
sealed class SuccessgetEvent {}

class SuccesGetProjectEvent extends SuccessgetEvent {}

class SuccesGetTasksEvent extends SuccessgetEvent {}
