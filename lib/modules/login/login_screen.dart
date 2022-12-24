import 'package:e_commerce_app/shared/components/components.dart';
import 'package:e_commerce_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../home/home_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  bool? remember = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        appBar: AppBar(
          leading: backButton(context),
          title: const Text('Sing in'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Form(
                key: formKey,
                child:Column(
                  children: [
                    Text(
                      'Welcome Back',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Colors.black,
                            fontSize: 24,
                          ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      'Sign in with your email and password  \nor continue with social media',
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          ?.copyWith(height: 1),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 60),
                    defaultFormField(
                      controller: emailController,
                      type: TextInputType.emailAddress,
                      onTap: () {},
                      onChanged: (v) {},
                      onSubmit: (v) {},
                      hintText: 'Enter Your Email',
                      labelText: 'Email',
                      suffixIcon: 'assets/icons/Mail.svg',
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Email must not be empty';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 20),
                    defaultFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      onTap: () {},
                      onChanged: (v) {},
                      onSubmit: (v) {},
                      isPassword: true,
                      hintText: 'Enter Your Password',
                      labelText: 'Password',
                      suffixIcon: 'assets/icons/Lock.svg',
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Password must not be empty';
                        }
                        return null;
                      },
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: remember,
                          onChanged: (value) {
                            setState(() {
                              remember = value;
                            });
                          },
                        ),
                        Text(
                          'Remember Me',
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                        const Spacer(),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Forget Password?',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1
                                ?.copyWith(color: kPrimaryColor),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    defaultButton(
                      function: () {
                        if (formKey.currentState!.validate()) {
                          navigateTo(context, const HomeScreen());
                        }
                      },
                      text: 'Continue',
                    ),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          iconSize: 40,
                          icon: SvgPicture.asset(
                            'assets/icons/google-icon.svg',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          iconSize: 40,
                          icon: SvgPicture.asset(
                            'assets/icons/facebook-2.svg',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          iconSize: 40,
                          icon: SvgPicture.asset(
                            'assets/icons/twitter.svg',
                            height: 40,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don\'n have an account?',
                          style: TextStyle(
                            fontFamily: 'muli',
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontFamily: 'muli',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
