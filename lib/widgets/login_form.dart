import 'package:flutter/material.dart';
import 'package:food_delivery_app/widgets/user_login_button.dart';
import 'package:food_delivery_app/widgets/user_password_textfield.dart';
import 'package:food_delivery_app/widgets/username_textfield.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});
  final _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const UsernameTextfield(),
          const UserPasswordTextfield(),
          UserLoginButton(formKey: _formKey),
        ],
      ),
    );
  }
}
