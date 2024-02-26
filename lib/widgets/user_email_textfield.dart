import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/login/bloc/login_bloc.dart';

class UserEmailTextfield extends StatelessWidget {
  const UserEmailTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(label: Text("Username")),
          validator: (value) =>
              state.isValidUsername ? null : "Username is too short",
          onChanged: (value) => context
              .read<LoginBloc>()
              .add(LoginUsernameChangedEvent(email: value)),
        );
      },
    );
  }
}
