import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:photo/pallete.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  // ignore: non_constant_identifier_names
  List<double> icono_activo = [
    1, 0, 0, 0
  ];

  @override
  Widget build(BuildContext context) {

    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor:  kBlack,
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
            Positioned(
              top: screenHeight * 0.4,
              right: -88,
              child: Container(
                height: 166,
                width: 166,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPink,
                ),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                      sigmaX: 200,
                      sigmaY: 200
                  ),
                  child: Container(
                    height: 166,
                    width: 166,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: -100,
              left: -100,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBlue.withOpacity(0.4),
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
              ),
            ),
            SafeArea(
              bottom: false,
              child: ListView(
                primary: true,
                children: const [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      '¿Que fotos deseas?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: kWhite,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SearchFieldWidget(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Ultimos eventos',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 22
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SwiperSlider(),
                  /* Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: SizedBox(
                      height: screenHeight * 0.35,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: const [
                          PhotoCard(source: 'assets/images/Maternidad-1.jpg'),
                          PhotoCard(source: 'assets/images/Maternidad-2.jpg'),
                          PhotoCard(source: 'assets/images/Maternidad-3.jpg')
                        ],
                      ),
                    ),
                  ), */
                  SizedBox(
                    height: 20,
                  ),
                ],
              )
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 64,
        width: 64,
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              kPink.withOpacity(0.2),
              kGreen.withOpacity(0.2)
            ]
          )
        ),
        child: Container(
          height: 60,
          width: 60,
          padding: const EdgeInsets.all(4),
          decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    kPink,
                    kGreen
                  ]
              )
          ),
          child: RawMaterialButton(
            onPressed: () {},
            shape: const CircleBorder(),
            fillColor: const Color(0xff404c57),
            child: const Icon(
              Icons.photo_camera_outlined,
              color: kWhite,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: GlassmorphicContainer(
        width: screenWidth,
        height: 72,
        borderRadius: 0,
        linearGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kWhite.withOpacity(0.1),
            kGreen.withOpacity(0.3)
          ]
        ),
        border: 0,
        blur: 30,
        borderGradient: const LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            kPink,
            kGreen
          ]
        ),
        child: BottomAppBar(
          color: Colors.transparent,
          notchMargin: 4,
          elevation: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      icono_activo = [1, 0, 0, 0];
                    });
                  },
                  icon: Icon(
                    icono_activo[0] == 1 ? Icons.home : Icons.home_outlined,
                    color: kWhite.withOpacity(0.8),
                    size: 30,
                  ),
                )
              ),
              Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        icono_activo = [0, 1, 0, 0];
                      });
                    },
                    icon: Icon(
                      icono_activo[1] == 1 ? Icons.auto_stories : Icons.auto_stories_outlined,
                      color: kWhite.withOpacity(0.8),
                      size: 30,
                    ),
                  )
              ),
              const Expanded(
                  child: Text(''),
              ),
              Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        icono_activo = [0, 0, 1, 0];
                      });
                    },
                    icon: Icon(
                      icono_activo[2] == 1 ? Icons.photo : Icons.photo_outlined,
                      color: kWhite.withOpacity(0.8),
                      size: 30,
                    ),
                  )
              ),
              Expanded(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        icono_activo = [0, 0, 0, 1];
                      });
                    },
                    icon: Icon(
                      icono_activo[3] == 1 ? Icons.account_circle : Icons.account_circle_outlined,
                      color: kWhite.withOpacity(0.8),
                      size: 30,
                    ),
                  )
              ),
            ],
          ),
        ),
      )
    );
  }
}

