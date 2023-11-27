
import 'package:expat_swaps/controller/login.dart';
import 'package:expat_swaps/controller/user_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(foregroundImage: NetworkImage(UserController.user?.photoURL ??''),),
          Text(UserController.user?.displayName ?? ''),
          ElevatedButton(onPressed: ()async{
            await UserController.Logout();
            if(mounted){
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>Login()));
            }

          }, child: Text("Logout"))


      ],),)
    );
  }
}
