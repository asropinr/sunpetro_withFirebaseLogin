import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sunpetro2/constant/r.dart';
import 'package:sunpetro2/screen/homepageScreen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Future<UserCredential?> signInWithGoogle() async {
    GoogleSignInAccount? googleUser;
    try {
      googleUser = await GoogleSignIn().signIn();
      OAuthCredential credential;
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        if (googleAuth.idToken != null && googleAuth.accessToken != null) {
          credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );

          return await FirebaseAuth.instance.signInWithCredential(credential);
        } else {}
      } else {}
    } catch (e) {
      rethrow;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              R.strings.titleLoginScreen,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                await signInWithGoogle();
                final user = FirebaseAuth.instance.currentUser;
                if (user != null) {
                  Navigator.of(context)
                      .pushReplacement(MaterialPageRoute(builder: (_) {
                    return HomePageScreen();
                  }));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(R.strings.gagalLogin),
                      duration: Duration(seconds: 5),
                    ),
                  );
                }
              },
              child: Text(R.strings.buttonLogin),
            ),
          ],
        ),
      ),
    );
  }
}
