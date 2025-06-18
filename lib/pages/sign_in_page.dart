import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text_field.dart';
import 'package:fokusly_digital_wellbeing_app/provider/user_provider.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  bool _isLoading = false;

  void _loginUser() async {
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _showSnackBar('Please enter both email and password');
      return;
    }

    setState(() => _isLoading = true);

    final userProvider = context.read<UserProvider>();
    final user = await userProvider.loginUser(email: email, password: password);

    setState(() => _isLoading = false);

    if (user != null) {
      _showSnackBar('Login successful');
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      emailController.clear();
      passwordController.clear();
    } else {
      final error = userProvider.errorMessage ?? 'Login failed';
      _showSnackBar(error);
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Color(0xFFD6FFDE),
        content: TextWidget(text: message, fontSize: sp(15)),
      ),
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: sw(100),
        height: sh(100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(sr(20)),
          gradient: const LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFFF2F8FC)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: h(30)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(text: 'Sign In', fontWeight: FontWeight.w700),
              VSpace(26),
              Container(
                width: w(316),
                height: h(300),
                padding: EdgeInsets.only(
                  top: h(50),
                  left: w(15),
                  bottom: h(10),
                  right: w(15),
                ),
                decoration: BoxDecoration(
                  color: const Color(0xFFD6FFDE),
                  borderRadius: BorderRadius.circular(sr(15)),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color: const Color.fromRGBO(175, 242, 188, 0.35),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    MyTextField(
                      controller: emailController,
                      padding: EdgeInsets.only(left: w(21)),
                      width: w(289),
                      height: h(40),
                      radius: sr(7.5),
                      hintText: 'Email',
                      textInputType: TextInputType.emailAddress,
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(6, 84, 91, 1),
                      ),
                    ),
                    VSpace(9),
                    MyTextField(
                      controller: passwordController,
                      textInputType: TextInputType.visiblePassword,
                      padding: EdgeInsets.only(left: w(21)),
                      width: w(289),
                      height: h(40),
                      radius: sr(7.5),
                      hintText: 'Password',
                      border: Border.all(
                        width: 0.5,
                        color: const Color.fromRGBO(6, 84, 91, 1),
                      ),
                    ),
                    VSpace(39),
                    MyButton(
                      width: w(289),
                      height: h(42),
                      radius: sr(20),
                      text: _isLoading ? 'Signing in...' : 'Access account',
                      onTap: _isLoading ? null : _loginUser,
                      padding: EdgeInsets.symmetric(
                        horizontal: w(10),
                        vertical: h(10),
                      ),
                    ),
                    VSpace(10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(context, '/signUp');
                      },
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: h(10),
                            right: w(10),
                            bottom: h(10),
                          ),
                          child: TextWidget(
                            text: 'Not a user? SignUp',
                            fontSize: sp(12),
                            lineHeight: 1.5,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              VSpace(10),
            ],
          ),
        ),
      ),
    );
  }
}
