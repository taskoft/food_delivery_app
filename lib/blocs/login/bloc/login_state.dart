// ignore_for_file: unnecessary_this

part of 'login_bloc.dart';

class LoginState extends Equatable {
  final String email;
  bool get isValidUsername => email.length > 3;
  final String userPassword;
  bool get isValidPassword => userPassword.length > 5;
  final FormSubmissionStatus formStatus;
  //final String? token;

  const LoginState(
      {this.email = "",
      this.userPassword = "",
      this.formStatus = const InitialFormStatus()});

  LoginState copyWrite(
      {String? userName,
      String? userPassword,
      FormSubmissionStatus? formStatus}) {
    return LoginState(
      email: userName ?? this.email,
      userPassword: userPassword ?? this.userPassword,
      formStatus: formStatus ?? this.formStatus,
    );
  }

  @override
  List<Object> get props => [email, userPassword, formStatus];
}

final class LoginInitialState extends LoginState {}
