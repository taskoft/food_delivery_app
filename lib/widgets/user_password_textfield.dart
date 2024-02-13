import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/login/bloc/login_bloc.dart';

class UserPasswordTextfield extends StatelessWidget {
  const UserPasswordTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return TextFormField(
          decoration: const InputDecoration(label: Text("Password")),
          validator: (value) =>
              state.isValidPassword ? null : "Password is too short",
          onChanged: (value) => context
              .read<LoginBloc>()
              .add(LoginPasswordChangedEvent(password: value)),
        );
      },
    );
  }
}
