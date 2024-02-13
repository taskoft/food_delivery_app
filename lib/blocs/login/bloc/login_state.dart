part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String userName;
  bool get isValidUsername => userName.length > 3;
  final String userPassword;
  bool get isValidPassword => userPassword.length > 6;
  final FormSubmissionStatus formStatus;
  //final String? token;

  const LoginState(
      {this.userName = "",
      this.userPassword = "",
      this.formStatus = const InitialFormStatus()});

  LoginState copyWrite(
      {String? userName,
      String? userPassword,
      FormSubmissionStatus? formStatus}) {
    return LoginState(
      userName: userName ?? this.userName,
      userPassword: userPassword ?? this.userPassword,
      formStatus: formStatus ?? this.formStatus,
    );
  }

  @override
  List<Object> get props => [userName, userPassword, formStatus];
}

final class LoginInitialState extends LoginState {}
