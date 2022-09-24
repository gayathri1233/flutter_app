import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_view.dart';
//import 'package:food_app/screens/home/home_screen.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screen/home_screen.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

 Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
          await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {
      //print(e.message);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/background.jpg')
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Sign in to continue'),
                  Text(
                    'Vegi',
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    shadows: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color.fromARGB(255, 11, 158, 20),
                        offset: Offset(3,3),
                      )
                    ]
                  ),
                  ),
                  Column(
                    children:[
                  SignInButton(
  Buttons.Google,
  text: "Sign up with Google",
  onPressed: () {
    _googleSignUp().then(
                            (value) => Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (context) => HomeScreen(),
                              ),
                            ),
                          );
  },
),
Padding(
              padding: EdgeInsets.only(top: 5),
),
              

SignInButton(
    
  Buttons.Apple,
  text: "Sign up with Apple",
  onPressed: () {},
),
                    ],
                  ),

              

Column(
                    children:[
Text('By signing in you are agreeing to our',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0))),
Text('Terms and condition',style: TextStyle(color: Color.fromARGB(255, 16, 16, 16),))
                    ],
)
                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}