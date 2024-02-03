
import 'package:digibook/login.dart';
import 'package:digibook/splash_1.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
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
      title: 'Welcome Screen',
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
                  const SizedBox(height: 300),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 67),
                    child: Image.asset('images/logo.png'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Text(
                        """Reading a book and getting bored? Digibook lets you enjoy your favorite books in a fun new way, anytime, anywhere. With just the touch of a finger, you can find and read your favorite books.""",
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
                            MaterialPageRoute(builder: (context) => const Splash1())
                        );
                      },

                      child: const Center(
                          child: Text(
                              "Take a tour",
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