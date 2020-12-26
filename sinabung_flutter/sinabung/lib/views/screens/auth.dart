import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:sinabung/utils/signin.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  static const _kTitleBoldFont = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Color(0xFF202944),
  );

  static const _kNormalFont = TextStyle(
    fontSize: 14,
    color: Color(0xFF2D3033),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFE7F9FF),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset("assets/images/preauth.png", fit: BoxFit.fitWidth),
            Padding(
              padding: const EdgeInsets.fromLTRB(36, 36, 36, 9),
              child: Text("Mulai sadar terhadap kondisi keuanganmu sekarang",
                  style: _kTitleBoldFont),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(36, 9, 36, 36),
              child: Text(
                  "Habis membeli makanan favoritmu. Berapa uang yang"
                  "kamu masih punya hari ini?",
                  style: _kNormalFont),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: GoogleSignInButton(
                onPressed: () {
                  var auth = new GoogleAuth();
                  auth.signIn("", "").then((result) => {
                        if (result != null)
                          Navigator.of(context)
                              .pushReplacementNamed("/home", arguments: auth)
                      });
                },
                darkMode: true,
              ),
            )
          ],
        ),
      ),
    );
  }
}
