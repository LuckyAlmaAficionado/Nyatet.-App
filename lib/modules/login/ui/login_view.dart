import 'dart:math';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:frontend_nyatet_app_flutter/modules/home/ui/home_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/login/bloc/login_bloc.dart';
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

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController1.animateTo(
        _scrollController1.position.maxScrollExtent,
        duration: const Duration(seconds: 4000),
        curve: Curves.linear,
      );
      _scrollController2.animateTo(
        _scrollController2.position.maxScrollExtent,
        duration: const Duration(seconds: 4000),
        curve: Curves.linear,
      );
      _scrollController3.animateTo(
        _scrollController3.position.maxScrollExtent,
        duration: const Duration(seconds: 4000),
        curve: Curves.linear,
      );
    });
  }

  @override
  void dispose() {
    _scrollController1.dispose();
    _scrollController2.dispose();
    _scrollController3.dispose();
    super.dispose();
  }

  final ScrollController _scrollController1 = ScrollController();
  final ScrollController _scrollController2 = ScrollController();
  final ScrollController _scrollController3 = ScrollController();

  @override
  Widget build(BuildContext widgetContext) {
    return Scaffold(
      backgroundColor: HexColor("#b5f1e9"),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: -30,
                    left: MediaQuery.of(context).size.width * 0.092,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-27 / 360),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.red,
                        ),
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          controller: _scrollController1,
                          itemCount: 1000,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                left: 5,
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color.fromARGB(
                                    255,
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                    Random().nextInt(255)),
                              ),
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: 90,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -60,
                    left: MediaQuery.of(context).size.width * 0.45,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-27 / 360),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.red,
                        ),
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          controller: _scrollController2,
                          itemCount: 1000,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                left: 5,
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color.fromARGB(
                                    255,
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                    Random().nextInt(255)),
                              ),
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: 90,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -100,
                    left: MediaQuery.of(context).size.width * 0.795,
                    child: RotationTransition(
                      turns: const AlwaysStoppedAnimation(-27 / 360),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.red,
                        ),
                        width: MediaQuery.of(context).size.width * 0.30,
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: ListView.builder(
                          controller: _scrollController3,
                          itemCount: 1000,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(
                                top: 5,
                                left: 5,
                                right: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7),
                                color: Color.fromARGB(
                                    255,
                                    Random().nextInt(255),
                                    Random().nextInt(255),
                                    Random().nextInt(255)),
                              ),
                              width: MediaQuery.of(context).size.width * 0.28,
                              height: 90,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Expanded(
            //   child: Container(
            //     alignment: Alignment.center,
            //     child: ListView(
            //       shrinkWrap: true,
            //       children: [
            //         Text(
            //           "Nyatet.",
            //           textAlign: TextAlign.center,
            //           style: GoogleFonts.quicksand(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 30,
            //             color: HexColor("#0c756e"),
            //           ),
            //         ),
            //         const SizedBox(height: 15),
            //         Text(
            //           "Selamat datang di Nyatet. \nSilahkan Login untuk melanjutkan",
            //           textAlign: TextAlign.center,
            //           style: GoogleFonts.quicksand(
            //             fontWeight: FontWeight.bold,
            //             fontSize: 14,
            //             color: HexColor("#0c756e").withOpacity(0.8),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
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

                          if (widgetContext.mounted) {
                            Navigator.pushNamedAndRemoveUntil(
                              widgetContext,
                              HomeView.routeName,
                              (route) => false,
                            );
                          }
                        },
                        error: (message) {
                          ScaffoldMessenger.of(widgetContext).showSnackBar(
                            SnackBar(
                              content: Text(message),
                            ),
                          );
                        },
                        initial: () {},
                        orElse: () {
                          ScaffoldMessenger.of(widgetContext).showSnackBar(
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
