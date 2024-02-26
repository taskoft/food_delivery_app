import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/locator.dart';
import 'package:food_delivery_app/repository/auth/login/login_repository.dart';
import 'package:food_delivery_app/repository/auth/register/form_submission_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository? authRepo = locator<LoginRepository>();

  LoginBloc({this.authRepo}) : super(const LoginState()) {
    on<LoginSubmittedEvent>(_loginSubmittedEvent);
    on<LoginUsernameChangedEvent>(_loginUsernameChanged);
    on<LoginPasswordChangedEvent>(_loginPasswordChanged);
  }

  void _loginSubmittedEvent(LoginEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWrite(formStatus: FormSubmitting()));
    try {
      await authRepo?.loginCall(
          email: state.email, password: state.userPassword);
      emit(state.copyWrite(formStatus: FormSubmissionSuccess()));
    } catch (e) {
      emit(state.copyWrite(formStatus: FormSubmissionFailed(e)));
    }
  }

  void _loginUsernameChanged(
      LoginUsernameChangedEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWrite(userName: event.email));
  }

  void _loginPasswordChanged(
      LoginPasswordChangedEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWrite(userPassword: event.password));
  }
}
