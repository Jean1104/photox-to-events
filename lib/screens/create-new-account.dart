import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo/pallete.dart';
import '../widgets/widgets.dart';
import 'package:photo/components/custom-outline.dart';

class CreateNewAccount extends StatelessWidget {
  const CreateNewAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        const BackgroundImage(urlImage: 'assets/images/register.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.height * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: ClipOval(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                          child: CircleAvatar(
                            radius: size.width * 0.14,
                            backgroundColor: Colors.grey[400]?.withOpacity(0.4),
                            child: Icon(FontAwesomeIcons.user, color: kWhite, size: size.width * 0.1,),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: size.height * 0.08,
                        left: size.width * 0.56,
                        child: Container(
                          height: size.width * 0.1,
                          width: size.width * 0.1,
                          decoration: BoxDecoration(
                              color: kBlue,
                              shape: BoxShape.circle,
                              border: Border.all(color: kWhite, width: 2,)
                          ),
                          child: const Icon(FontAwesomeIcons.arrowUp, color: kWhite,),
                        )
                    ),
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    const TextInputField(
                        icon: FontAwesomeIcons.user,
                        hint: 'Nombre',
                        inputType: TextInputType.name,
                        inputAction: TextInputAction.next
                    ),
                    const TextInputField(
                        icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.next
                    ),
                    const PasswordInput(
                        icon: FontAwesomeIcons.lock,
                        hint: 'Contraseña',
                        inputAction: TextInputAction.next
                    ),
                    const PasswordInput(
                        icon: FontAwesomeIcons.lock,
                        hint: 'Confirmar contraseña',
                        inputAction: TextInputAction.done
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
                            'Crear cuenta',
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
                      height: 35,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('¿Ya tienes una cuenta?', style: kBodyText, ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/');
                          },
                          child: Text('Login', style: kBodyText.copyWith(color: kBlue),),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
