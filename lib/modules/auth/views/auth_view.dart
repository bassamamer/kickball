import 'package:flutter/material.dart';
import 'package:kick_ball/helpers/constant_helper.dart';
import 'package:kick_ball/modules/auth/views/register_view.dart';

import 'login_view.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              width: double.infinity,
              child: LoginView(),
            ),
          ),
          Expanded(
            child: Container(
              color: AppColors.primary,
              width: double.infinity,
              child: RegisterView(),
            ),
          ),
        ],
      ),
    );
  }
}
