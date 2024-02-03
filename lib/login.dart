import 'package:digibook/register.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<Login> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _obscureText = true;

  @override
  Widget build( BuildContext context) {
    final ButtonStyle indigoButton = ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(97, 38, 180, 1),
        fixedSize: const Size(295, 48)
    );

    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),

      home: Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 109, bottom: 58),
                      child: Image.asset(
                        'images/logo.png',
                        height: 73,
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 8, right: 264),
                      child: Text(
                          "Login",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                          )
                      ),
                    ),

                    const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                            "Enter your email address and password here. ",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: TextFormField(
                        controller: _username,
                        decoration: const InputDecoration(
                          labelText: 'Username',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: TextFormField(
                        controller: _password,
                        obscureText: _obscureText,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          border: const OutlineInputBorder(),
                          suffixIcon: IconButton(
                            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                            onPressed: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                          )
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 230),
                      child: Text(
                          "Forgot password?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          )
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: ElevatedButton(
                        style: indigoButton,
                        onPressed: () {

                        },

                        child: const Center(
                            child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                )
                            )
                        ),
                      ),
                    ),

                    const Padding(
                      padding: EdgeInsets.only(bottom: 30),
                      child: Center(
                        child: Text(
                            "or Login with",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/AppleIcon.png',
                            width: 19,
                          ),
                          const SizedBox(width: 18),
                          Image.asset(
                              'images/FacebookIcon.png',
                            width: 19,
                          ),
                          const SizedBox(width: 18),
                          Image.asset(
                              'images/GoogleIcon.png',
                            width: 19,
                          ),
                        ],
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text(
                              "Didn't have account?, ",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              )
                          ),

                          TextButton(
                              onPressed: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Register())
                                );
                              },

                              child: const Text(
                                  "Register here",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  )
                              ),
                          )


                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
      ),
    );
  }

  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }

}