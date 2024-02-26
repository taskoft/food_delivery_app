import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery_app/pages/home_page.dart';
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
                  // ID şifre doğruysa yeni sayfaya yönlendirecek
                  /* if (state.formStatus is FormSubmissionSuccess) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()),
                        (route) => false);
                  }*/
                }
              },
              child: const Text("Login"));
    });
  }
}
