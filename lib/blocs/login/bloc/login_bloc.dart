import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery_app/repository/auth/login/login_repository.dart';
import 'package:food_delivery_app/repository/auth/register/form_submission_status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginRepository? authRepo;
  LoginBloc({this.authRepo}) : super(const LoginState()) {
    on<LoginEvent>(_loginEvent);
    on<LoginUsernameChangedEvent>(_loginUsernameChanged);
    on<LoginPasswordChangedEvent>(_loginPasswordChanged);
  }



  void _loginEvent(LoginEvent event, Emitter<LoginState> emit) async {}
  void _loginUsernameChanged(
      LoginUsernameChangedEvent event, Emitter<LoginState> emit) async {
    emit(state.copyWrite(userName: event.userName));
  }

  void _loginPasswordChanged(
      LoginPasswordChangedEvent event, Emitter<LoginState> emit) async {}
}
