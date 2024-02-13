import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/repository/auth/register/form_submission_status.dart';
import '../blocs/login/bloc/login_bloc.dart';

class UserLoginButton extends StatelessWidget {
  const UserLoginButton({super.key, required this.formKey});
  final dynamic formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(builder: (context, state) {
      return state.formStatus is FormSubmitting
          ? const Center(child: CircularProgressIndicator())
          : ElevatedButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<LoginBloc>().add(LoginSubmittedEvent());
                }
              },
              child: const Text("Login"));
    });
  }
}
