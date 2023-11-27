import 'package:expat_swaps/controller/user_controller.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.all(30),
          child: Center(
            child: Column(
              children: [
                // const Spacer(),
                SizedBox(
                  height: screenHeight * 0.25,
                ),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 300),
                  child: Image.asset('assets/images/R.jpg'),
                ),
                SizedBox(
                  height: screenHeight * 0.1,
                ),
                const Center(
                  child: Text(
                    "Welcome to the auth app",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.only(top: 30, bottom: 30),
                  child: Text(
                    "You can sign in with google. Let's get you authenticated at once",
                    textAlign: TextAlign.center,
                  ),
                ),
                FilledButton.tonalIcon(
                    onPressed: () async {
                      try {
                        final user = await UserController.loginWithGoogle();
                        if (user != null && mounted) {
                          final email = user.email;
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        }
                      } on FirebaseAuthException catch (error) {
                        print(error.message);
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                          error.message ?? "something went wrong",
                        )));
                      } catch (error) {
                        print(error);
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(error.toString())));
                      }
                    },
                    icon: const Icon(IconlyLight.login),
                    label: const Text("Continue with Google")),
              ],
            ),
          )),
    );
  }
}
