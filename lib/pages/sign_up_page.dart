import 'package:flutter/material.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_button.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text.dart';
import 'package:fokusly_digital_wellbeing_app/components/my_text_field.dart';
import 'package:fokusly_digital_wellbeing_app/provider/user_provider.dart';
import 'package:fokusly_digital_wellbeing_app/utils/sizer_utils.dart';
import 'package:provider/provider.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  //* text edit controller for fullname, email and password
  final fullnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  //* set default loading to false
  bool _isLoading = false;

  void _registerUser() async {
    final fullname = fullnameController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text;

    if (fullname.isEmpty || email.isEmpty || password.isEmpty) {
      _showSnackBar('Please fill in all fields');
      return;
    }

    setState(() => _isLoading = true);

    final userProvider = context.read<UserProvider>();
    final result = await userProvider.registerUser(
      fullname: fullname,
      email: email,
      password: password,
    );

    setState(() => _isLoading = false);

    if (result == null) {
      // Success
      _showSnackBar('Account created successfully!');
      Navigator.pushReplacementNamed(context, '/onboarding1');

      fullnameController.clear();
      emailController.clear();
      passwordController.clear();
    } else {
      // Error
      _showSnackBar(result);
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
    fullnameController.dispose();
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
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            colors: [Color(0xFFFFFFFF), Color(0xFFF2F8FC)],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: w(30)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              TextWidget(text: 'Sign Up', fontWeight: FontWeight.w700),

              VSpace(29),

              Container(
                width: w(316),
                height: h(330),
                padding: EdgeInsets.only(
                  left: w(15),
                  top: h(50),
                  bottom: h(10),
                  right: w(15),
                ),
                decoration: BoxDecoration(
                  color: Color(0xFFD6FFDE),
                  borderRadius: BorderRadius.circular(sr(15)),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 4),
                      blurRadius: 4,
                      spreadRadius: 0,
                      color: Color.fromRGBO(175, 242, 188, 0.35),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    MyTextField(
                      controller: fullnameController,
                      textInputType: TextInputType.name,
                      padding: EdgeInsets.only(left: h(20)),
                      width: w(289),
                      height: h(42),
                      radius: sr(7.5),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                        fontSize: sp(16),
                        color: Color.fromRGBO(6, 84, 91, 1),
                      ),
                      border: Border.all(
                        width: 0.5,
                        color: Color.fromRGBO(6, 84, 91, 1),
                      ),
                    ),

                    VSpace(10),
                    MyTextField(
                      controller: emailController,
                      textInputType: TextInputType.text,
                      padding: EdgeInsets.only(left: w(21)),
                      width: w(289),
                      height: h(40),
                      radius: sr(7.5),
                      hintText: 'Email',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: sp(16),
                      ),
                      border: Border.all(
                        width: 0.5,
                        color: Color.fromRGBO(6, 84, 91, 1),
                      ),
                    ),

                    VSpace(9),

                    MyTextField(
                      controller: passwordController,
                      textInputType: TextInputType.text,
                      padding: EdgeInsets.only(left: 21),
                      width: w(289),
                      height: h(40),
                      radius: sr(7.5),
                      hintText: 'Password',
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: sp(16),
                      ),
                      border: Border.all(
                        width: 0.5,
                        color: Color.fromRGBO(6, 84, 91, 1),
                      ),
                    ),

                    VSpace(37),
                    MyButton(
                      width: w(289),
                      height: h(42),
                      radius: sr(20),
                      padding: EdgeInsets.symmetric(
                        horizontal: w(10),
                        vertical: h(10),
                      ),
                      text: _isLoading ? 'Creating...' : 'Create Account',
                      onTap: _isLoading ? null : _registerUser,
                    ),

                    VSpace(10),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);

                        Navigator.pushNamed(context, '/signIn');
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
                            text: 'Not a user? SignIn',
                            fontSize: sp(12),
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
