part of 'auth_bloc.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}

class SuccessInSignup extends AuthState {}

class ErrorInSignup extends AuthState {}
