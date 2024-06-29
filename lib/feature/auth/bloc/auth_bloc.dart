import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:osscam_app/model/handilling.dart';
import 'package:osscam_app/model/signup_model.dart';

import '../../../service/signup_service.dart';


part 'auth_event.dart';
part 'auth_state.dart';

//! شرح للبلوك
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<Signup>((event, emit) async {
      ResultModel result = await SignupServiceImpl().signup(event.user);
      //! شرح هون ليش انو اذا الريزولت هو من اليوزر موديل
      if (result is UserModel) {
        emit(SuccessInSignup());
        
      } else {
        emit(ErrorInSignup());
      }
    });
  }
}
