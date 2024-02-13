part of 'login_bloc.dart';

sealed class LoginEvent extends Equatable {}

class LoginUsernameChangedEvent extends LoginEvent {
  final String? userName;

  LoginUsernameChangedEvent({required this.userName});

  @override
  List<Object?> get props => [userName];
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
