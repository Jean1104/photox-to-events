import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:photo/pallete.dart';
import '../widgets/widgets.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;

    return Stack(
      children: [
        const BackgroundImage(urlImage: 'assets/images/recovery.jpg'),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: kWhite,
              ),
            ),
            title: const Text('Recuperar contraseña', style: kBodyText,),
            centerTitle: true,
          ),
          body: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.08,
                    ),
                    SizedBox(
                      width: size.width * 0.8,
                      child: const Text('Ingresa tu email y nosotros te enviaremos la instruccion para resetear tu contraseña', style: kBodyText,),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const TextInputField(
                        icon: FontAwesomeIcons.envelope,
                        hint: 'Email',
                        inputType: TextInputType.emailAddress,
                        inputAction: TextInputAction.done
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const RoundedBoton(buttonName: 'Enviar')
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
