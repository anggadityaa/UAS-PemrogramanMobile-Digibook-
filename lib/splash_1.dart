import 'package:digibook/splash_2.dart';
import 'package:flutter/material.dart';

import 'login.dart';

class Splash1 extends StatelessWidget {
  const Splash1({super.key});

  @override
  Widget build( BuildContext context) {
    final ButtonStyle indigoButton = ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(97, 38, 180, 1),
        fixedSize: const Size(295, 48)
    );

    final ButtonStyle whiteButton = ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
        fixedSize: const Size(295, 48),
        side: const BorderSide(style: BorderStyle.solid, color: Color.fromRGBO(97, 38, 180, 1), width: 2)
    );

    return MaterialApp(
      title: 'Splash Screen 1',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 67, top: 26, right: 230),
                    child: Image.asset(
                      'images/logo.png',
                      height: 44,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 43),
                    child: Image.asset(
                      'images/bro.png',
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                        """We provide a wide variety of books from around the world, so you can read them anywhere and anytime. Everything at your fingertips.""",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ElevatedButton(
                      style: indigoButton,
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Splash2())
                        );
                      },

                      child: const Center(
                          child: Text(
                              "Continue",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                              )
                          )
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: whiteButton,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Login())
                      );
                    },

                    child: const Center(
                        child: Text(
                            "Login",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(97, 38, 180, 1)
                            )
                        )
                    ),
                  )
                ],
              ),
            ),
          )
      ),
    );
  }

}