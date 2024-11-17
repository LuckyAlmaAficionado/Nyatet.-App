import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_nyatet_app_flutter/modules/home/ui/home_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/login/bloc/login_bloc.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:frontend_nyatet_app_flutter/utils/normal_button_custom.dart';
import 'package:frontend_nyatet_app_flutter/utils/textformfield_custom.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static const routeName = "/login";

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController usernameController = TextEditingController(
    text: "AF Alma",
  );
  TextEditingController passwordController = TextEditingController(
    text: "password",
  );

  final _formEmailValidator = GlobalKey<FormState>();
  final _formPasswordValidator = GlobalKey<FormState>();

  bool showBottomSheet = false;
  bool isRememberMe = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        showBottomSheet = true;
      });
    });
  }

  @override
  Widget build(BuildContext contextt) {
    return Scaffold(
      backgroundColor: HexColor("#b5f1e9"),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Text(
                      "Nyatet.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: HexColor("#0c756e"),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Selamat datang di Nyatet. \nSilahkan Login untuk melanjutkan",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: HexColor("#0c756e").withOpacity(0.8),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 600),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              height: showBottomSheet
                  ? MediaQuery.of(context).size.height * 0.55
                  : 0,
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 20),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 140),
                    height: 5,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.055),
                  Form(
                    key: _formEmailValidator,
                    child: TextFormFieldCustom(
                      controller: usernameController,
                      filled: true,
                      onChanged: (p0) {
                        _formEmailValidator.currentState!.validate();
                      },
                      fillColor: Colors.white,
                      labelText: 'Username',
                      hintText: "Masukan Username",
                      onSaved: (value) {},
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username tidak boleh kosong";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Form(
                    key: _formPasswordValidator,
                    child: TextFormFieldCustom(
                      controller: passwordController,
                      labelText: 'Password',
                      hintText: "Masukan Password",
                      filled: true,
                      fillColor: Colors.white,
                      onChanged: (p0) {
                        _formPasswordValidator.currentState!.validate();
                      },
                      obsecureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password tidak boleh kosong";
                        } else if (value.length < 7) {
                          return "Password must be at least 8 characters long.";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isRememberMe,
                        onChanged: (value) {
                          setState(() {
                            isRememberMe = !isRememberMe;
                          });
                        },
                        activeColor: HexColor("#0c756e"),
                        side: BorderSide(color: Colors.grey.shade400, width: 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        visualDensity: VisualDensity.comfortable,
                        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      Text(
                        "Remember me",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: HexColor("#0c756e"),
                        ),
                      ),
                      const Spacer(),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: HexColor("#0c756e"),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  BlocListener<LoginBloc, LoginState>(
                    listener: (context, state) {
                      state.maybeWhen(
                        success: (data) async {
                          setState(() {
                            FocusScope.of(context).unfocus();
                            showBottomSheet = false;
                          });
                          await Future.delayed(const Duration(seconds: 1));

                          Navigator.pushNamedAndRemoveUntil(
                            contextt,
                            HomeView.routeName,
                            (route) => false,
                          );
                        },
                        error: (message) {
                          ScaffoldMessenger.of(contextt).showSnackBar(
                            SnackBar(
                              content: Text(message),
                            ),
                          );
                        },
                        initial: () {},
                        orElse: () {
                          ScaffoldMessenger.of(contextt).showSnackBar(
                            const SnackBar(
                              content: Text("Something went wrong"),
                            ),
                          );
                        },
                      );
                    },
                    child: NormalButtonCustom(
                      title: 'Login',
                      onTap: () {
                        _formEmailValidator.currentState!.validate();
                        _formPasswordValidator.currentState!.validate();

                        if (_formEmailValidator.currentState!.validate() &&
                            _formPasswordValidator.currentState!.validate()) {
                          context.read<LoginBloc>().add(
                                LoginEvent.login(
                                  username: usernameController.text,
                                  password: passwordController.text,
                                ),
                              );
                        }
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          color: HexColor("#0c756e"),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: HexColor("#0c756e"),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
