import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo/pallete.dart';
import '../widgets/widgets.dart';
import 'package:photo/components/custom-outline.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      children: [
        //const BackgroundImage(urlImage: 'assets/images/login.jpg'),
        Scaffold(
          backgroundColor: kBlack,
          extendBody: true,
          body: SizedBox(
            height: screenHeight,
            width: screenWidth,
            child: Stack(
            children: [
              Positioned(
                  top: -100,
                  left: -100,
                  child: Container(
                    height: 380,
                    width: 280,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kPink.withOpacity(0.5)
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 200,
                          sigmaY: 200
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.transparent,
                      ),
                    ),
                  )
              ),
              Positioned(
                  top: screenHeight * 0.3,
                  right: -150,
                  child: Container(
                    height: 350,
                    width: 400,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: kGreen.withOpacity(0.5)
                    ),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                          sigmaX: 200,
                          sigmaY: 200
                      ),
                      child: Container(
                        height: 200,
                        width: 200,
                        color: Colors.transparent,
                      ),
                    ),
                  )
              ),
              SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Flexible(
                      child: Center(
                        child: Text('Fotografia', style: TextStyle(color: Colors.white, fontSize: 60, fontWeight: FontWeight.bold),)
                      )
                    ),
                    const Center(
                      child: Text('Ingresar con: ', style: TextStyle(color: kWhite, fontSize: 25),),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Wrap(
                        spacing: 20,
                        children: [
                          LoginSocialButton(text: 'Google     ', icon: Icons.email, color: Colors.redAccent.withOpacity(0.8)),
                          LoginSocialButton(text: 'Facebook', icon: Icons.facebook_rounded, color: Colors.blueAccent.withOpacity(0.8)),
                        ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: size.width * 0.8,
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(width: 1, color: kWhite)
                          )
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const TextInputField(
                          icon: FontAwesomeIcons.envelope,
                          hint: 'Email',
                          inputType: TextInputType.emailAddress,
                          inputAction: TextInputAction.next,
                        ),
                        const PasswordInput(
                          icon: FontAwesomeIcons.lock,
                          hint: 'Password',
                          inputAction: TextInputAction.done,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.pushNamed(context, 'ForgotPassword'),
                          child: const Text(
                            'Olvidaste tu contraseña',
                            style: TextStyle(
                              color: kWhite,
                              fontSize: 20
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomOutline(
                          strokeWidth: 3,
                          radius: 16,
                          padding: const EdgeInsets.all(3),
                          width: 160,
                          height: 38,
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              kPink.withOpacity(0.8),
                              kGreen.withOpacity(0.8),
                            ],
                          ),
                          child: Container(
                            width: size.width * 0.8,
                            height: size.height * 0.07,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  kPink.withOpacity(0.7),
                                  kGreen.withOpacity(0.5),
                                ],
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Ingresar',
                                style: TextStyle(
                                  fontSize: 23,
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, 'HomeScreen');
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'CreateNewAccount'),
                      child: Container(
                        child: const Text('Crear cuenta', style: kBodyText,),
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(width: 1, color: kWhite)
                            )
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]
                ),
              ),
            ],)
          ),
        )
      ],
    );
  }
}

class LoginSocialButton extends StatelessWidget {
  const LoginSocialButton({
    Key? key,
    required this.text,
    required this.icon,
    required this.color
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.05,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16)
              )
            ),
            icon: Icon(icon, color: kWhite,),
            onPressed: () {},
            label: Text(text),
          ),
        ],
      ),
    );
  }
}


