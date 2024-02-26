part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {}

class LoginUsernameChangedEvent extends LoginEvent {
  final String? email;

  LoginUsernameChangedEvent({required this.email});

  @override
  List<Object?> get props => [email];
}

class LoginPasswordChangedEvent extends LoginEvent {
  final String? password;

  LoginPasswordChangedEvent({required this.password});
  @override
  List<Object?> get props => [password];
}

class LoginSubmittedEvent extends LoginEvent {
  @override
  List<Object?> get props => [];
}
