import 'package:flutter/material.dart';
import 'package:football_news_app/config/constants/app_constants.dart';
import 'package:football_news_app/views/page/authentication/forgot_password/forgot_password_page.dart';
import 'package:football_news_app/views/page/authentication/signup/sign_up.dart';
import 'package:football_news_app/views/page/main_page.dart';

import '../../../../config/constants/app_colors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _accountController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late FocusNode _focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              AppConstants.kSpacingItem120,
              const Icon(
                Icons.sports_volleyball_outlined,
                color: AppColors.emeraldGreen,
                size: 100,
              ),
              AppConstants.kSpacingItem16,
              TextFormField(
                controller: _accountController,
                focusNode: _focusNode,
                decoration: InputDecoration(
                  labelText: 'Tài khoản',
                  hintText: 'Nhập tài khoản',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              AppConstants.kSpacingItem16,
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  hintText: 'Nhập mật khẩu',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage()));
                    },
                    child: const Text('Quên mật khẩu?'),
                  ),
                ],
              ),
              AppConstants.kSpacingItem8,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).requestFocus(_focusNode);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ),
                    );
                  },
                  child: const Text('Đăng nhập'),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Bạn chưa có tài khoản?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage()));
                    },
                    child: const Text("Đăng kí"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
