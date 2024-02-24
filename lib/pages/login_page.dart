import 'package:flutter/material.dart';
import 'package:login/components/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 232, 232),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const SizedBox(height: 50),
              //login icon
              Image.asset(
                'lib/images/gdsc_logo.png',
                height: 70,
              ),

              const SizedBox(height: 80),

              //welcome msg
              const Text(
                'Welcome back',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),

              //email
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Email',
                  ),
                ),
              ),

              //password
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    fillColor: Colors.white70,
                    filled: true,
                    hintText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),

              //forgot password
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 5.0,
                    ),
                    child: Text(
                      'Forgot Password?',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //sing in btn
              const Mybtn(),
            ],
          ),
        ),
      ),
    );
  }
}
