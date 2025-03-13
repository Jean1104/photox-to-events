import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo/screens/screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const OmboardingScreen(),
        'LoginScreen': (context) => const LoginScreen(),
        'ForgotPassword': (context) => const ForgotPassword(),
        'CreateNewAccount': (context) => const CreateNewAccount(),
        'HomeScreen': (context) => const HomeScreen(),
      },
    );
  }
}

