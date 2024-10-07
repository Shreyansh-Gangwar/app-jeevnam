// ignore_for_file: use_build_context_synchronously

import 'package:app/services/auth_services.dart';
import 'package:app/utilities/colors.dart';
import 'package:app/utilities/routes.dart';
import 'package:app/widgets/orange_btn.dart';
import 'package:app/widgets/snackbar.dart';
import 'package:app/widgets/text_field.dart';
import 'package:app/widgets/white_btn.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool login = true;

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passController = TextEditingController();

  final TextEditingController nameController = TextEditingController();
  bool isLoading = false;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passController.dispose();
    nameController.dispose();
  }

  void signupUser() async {
    setState(() {
      isLoading = true;
    });
    String res = await AuthMethod().signupUser(
        email: emailController.text,
        password: passController.text,
        name: nameController.text);
    if (res == "success") {
      setState(() {
        isLoading = false;
      });
      await Future.delayed(const Duration(seconds: 1));
      Navigator.of(context).pushNamed(AppRoutes.bodystatsRoute);
    } else {
      setState(() {
        isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  void loginUser() async {
    setState(() {
      isLoading = true;
    });
    String res = await AuthMethod()
        .loginUser(email: emailController.text, password: passController.text);

    if (res == "success") {
      setState(() {
        isLoading = false;
      });
      await Future.delayed(const Duration(seconds: 1));
      Navigator.of(context).pushNamed(AppRoutes.homeRoute);
    } else {
      setState(() {
        isLoading = false;
      });
      showSnackBar(context, res);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color: Colors.white,
        child: Column(
          children: [
            const Expanded(
              flex: 88,
              child: SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            // Text("Welcome Back", style: Theme.of(context).textTheme.titleLarge),
            Expanded(
              flex: login ? 350 : 400,
              child: SizedBox(
                  child: login
                      ? Image.asset("assets/images/login.png")
                      : Image.asset("assets/images/signup.png")),
            ),
            Expanded(
              flex: login ? 78 : 100,
              child: const SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            login
                ? Container()
                : SizedBox(
                    height: 88,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Expanded(flex: 60, child: SizedBox()),
                            Text(
                              "Name",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const Expanded(flex: 302, child: SizedBox())
                          ],
                        ),
                        SizedBox(
                          width: 330,
                          child: TextFieldcustom(
                            controller: nameController,
                            formKey: "name",
                            obscureText: false,
                            hint: "Name",
                            fieldIcon: Icons.person,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Name can not be blank';
                              } else {
                                return '';
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
            Expanded(
              flex: login ? 67 : 18,
              child: const SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            Row(
              children: [
                const Expanded(flex: 60, child: SizedBox()),
                Text(
                  "Mail ID",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Expanded(flex: 302, child: SizedBox())
              ],
            ),
            SizedBox(
              width: 330,
              child: TextFieldcustom(
                controller: emailController,
                formKey: "email",
                obscureText: false,
                hint: "Email",
                fieldIcon: Icons.mail,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Mail can not be blank';
                  } else {
                    return '';
                  }
                },
              ),
            ),
            Expanded(
              flex: login ? 67 : 18,
              child: const SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            Row(
              children: [
                const Expanded(flex: 60, child: SizedBox()),
                Text(
                  "Password",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const Expanded(flex: 302, child: SizedBox())
              ],
            ),
            SizedBox(
              width: 330,
              child: TextFieldcustom(
                controller: passController,
                formKey: "pass",
                obscureText: true,
                suffixIcon: Icons.remove_red_eye,
                hint: "Password",
                fieldIcon: Icons.key,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password can not be blank';
                  } else {
                    if (value.length < 6) {
                      return 'Password should be more than 6 characters';
                    } else {
                      return '';
                    }
                  }
                },
              ),
            ),
            const Expanded(
              flex: 67,
              child: SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            OrangeBtn(
              btnText: login ? "Login" : "Sign Up",
              onTap: () {
                login ? loginUser() : signupUser();
              },
            ),
            Expanded(
              flex: login ? 67 : 55,
              child: const SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            Row(
              children: [
                const Expanded(flex: 40, child: SizedBox()),
                const SizedBox(
                    width: 153,
                    child: Expanded(child: Divider(color: Colors.black))),
                const Expanded(flex: 8, child: SizedBox()),
                Text(
                  "OR",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Expanded(flex: 8, child: SizedBox()),
                const SizedBox(
                    width: 153,
                    child:
                        Expanded(child: Divider(color: AppColor.neutral900))),
                const Expanded(flex: 40, child: SizedBox()),
              ],
            ),
            Expanded(
              flex: login ? 67 : 55,
              child: const SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            Row(
              children: [
                const Expanded(flex: 43, child: SizedBox()),
                WhiteBtn(
                  btnText: "Google",
                  onTap: () => AuthMethod().signinwithGoogle(context),
                  icon: Image.asset("assets/images/google_logo.png"),
                ),
                //-------------------------------------------------------------------------------------------------------
                //                                        OTHER LOGIN WIDGET
                //-------------------------------------------------------------------------------------------------------
                // const Expanded(flex: 21, child: SizedBox()),
                // const SizedBox(
                //     height: 74,
                //     child: Expanded(
                //         child: VerticalDivider(color: AppColor.neutral900))),
                // const Expanded(flex: 21, child: SizedBox()),
                // WhiteBtn(
                //   btnText: "Facebook",
                //   callback: AppRoutes.homeRoute,
                //   icon: Image.asset("assets/images/google_logo.png"),
                // ),
                //-------------------------------------------------------------------------------------------------------
                const Expanded(flex: 43, child: SizedBox()),
              ],
            ),
            const Expanded(
              flex: 30,
              child: SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
            Row(
              children: [
                const Expanded(flex: 53, child: SizedBox()),
                Text(
                  login ? "New to the app?" : "Already have an account?",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      login = !login;
                    });
                  },
                  child: Text(
                    " Click Here!",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  login ? " to Signup." : " to",
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const Expanded(flex: 53, child: SizedBox()),
              ],
            ),
            Text(
              login ? "" : "Login.",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            Expanded(
              flex: login ? 150 : 200,
              child: const SizedBox(
                height: 0,
                width: double.infinity,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
