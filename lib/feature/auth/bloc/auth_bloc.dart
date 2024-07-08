// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:osscam_app/core/resource/handilling.dart';
import 'package:osscam_app/models/request/signup_model.dart';
import '../service/signup_service.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<Signup>((event, emit) async {
      ResultModel result = await SignupServiceImpl().signup(event.user);

      if (result is SuccessSignUpModel) {
        emit(SuccessInSignup());
      } else {
        emit(ErrorInSignup());
      }
    });
  }
}
