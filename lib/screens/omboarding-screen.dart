import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:photo/pallete.dart';
import 'package:photo/components/custom-outline.dart';

class OmboardingScreen extends StatelessWidget {
  const OmboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
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
                height: 350,
                width: 220,
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
                  SizedBox(
                    height: screenHeight * 0.07,
                  ),
                  CustomOutline(
                    strokeWidth: 4,
                    radius: screenWidth * 0.5,
                    padding: const EdgeInsets.all(4),
                    width: screenWidth * 0.8,
                    height: screenWidth * 0.8,
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kPink,
                          kPink.withOpacity(0),
                          kGreen.withOpacity(0.1),
                          kGreen
                        ],
                        stops: const [
                          0.2,
                          0.4,
                          0.6,
                          1
                        ]
                    ),
                    child: Container(
                      width: screenWidth * 0.75,
                      height: screenWidth * 0.75,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            alignment: Alignment.bottomLeft,
                            image: AssetImage('assets/images/omboarding2.png'),
                          )
                      ),
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: screenHeight * 0.09,
                  ),
                  Text(
                    '¿Que momentos únicos\ndeseas recordar?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kWhite.withOpacity(0.85),
                      fontSize: screenHeight <= 667 ? 18 : 34,
                      fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.05,
                  ),
                  Text(
                    'Los mejores profesionales\nestán aquí',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kWhite.withOpacity(0.75),
                        fontSize: screenHeight <= 667 ? 12 : 16,
                        fontWeight: FontWeight.w700
                    ),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  CustomOutline(
                    strokeWidth: 3,
                    radius: 20,
                    padding: const EdgeInsets.all(3),
                    width: 160,
                    height: 38,
                    gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          kPink,
                          kGreen,
                        ],
                    ),
                    child: Container(
                      width: 155,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            kPink.withOpacity(0.5),
                            kGreen.withOpacity(0.5),
                          ],
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Regístrate',
                          style: TextStyle(
                            fontSize: 14,
                            color: kWhite,
                          ),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'LoginScreen');
                    },
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(3, (index) {
                      return Container(
                        height: 7,
                        width: 7,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index==0 ? kGreen : kWhite.withOpacity(0.3)
                        ),
                      );
                    }),
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  )
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}
