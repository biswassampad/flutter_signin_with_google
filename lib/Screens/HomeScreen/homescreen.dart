import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  bool isAuth = false; 

  @override
  Widget build(BuildContext context) {
    return isAuth ? buildAuthScreen() : buildUnAuthenticatedScreen();
  }


  // is auth screen

  Widget buildAuthScreen(){
    return Text('Authenticated');
  }

  // the screen when user is not authed 
  Widget buildUnAuthenticatedScreen(){
    return Scaffold(
      body:Container(
        child: Column(
          children: [
            Text('Google Auth',
            style:TextStyle(
              fontSize: 90.0,
              fontFamily: 'Signatra',
              color:Colors.black
            ) ,),
            Container(
              child: MaterialButton(
                onPressed: (){},
                color: Colors.lightBlue,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  ),
                ),
            )
          ],
        ),
      )
    );
  }

}