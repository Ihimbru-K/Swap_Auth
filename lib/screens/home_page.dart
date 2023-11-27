import 'package:expat_swaps/controller/user_controller.dart';
import 'package:expat_swaps/screens/form.dart';
import 'package:expat_swaps/screens/login.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(screenHeight * 0.03),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 45,
              foregroundImage:
                  NetworkImage(UserController.user?.photoURL ?? '', scale: 3),
            ),
            Text(
              UserController.user?.displayName ?? '',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: screenHeight * 0.1,
            ),
            Center(
              child: Text(
                "Hooray ${UserController.user?.displayName ?? ''} you've been successfully logged in!",
                style: TextStyle(color: Colors.deepPurple, fontSize: 23),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.06,
            ),
            Center(
              child: Text(
                "Let's now proceed to fill the form",
                style: TextStyle(color: Colors.deepPurple, fontSize: 19),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.08,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    await UserController.Logout();
                    if (mounted) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    }
                  },
                  child: Text("Logout"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        Size(150, 50)), // Increase the size values as needed
                  ),
                ),
                SizedBox(width: screenHeight * 0.05),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => MyForm()),
                    );
                  },
                  child: Text("Fill form"),
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(
                        Size(150, 50)), // Increase the size values as needed
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
