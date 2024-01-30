import 'package:flutter/material.dart';
import 'package:notes_flutter/serverpod_clint.dart';
import 'package:notes_flutter/sign_up_page.dart';
import 'package:serverpod_auth_email_flutter/serverpod_auth_email_flutter.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        child: Container(
          width: 260,
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SignInWithEmailButton(
                caller: client.modules.auth,
              ),
              SignInWithGoogleButton(
                onSignedIn: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpPage(),
                    ),
                  )
                },
                caller: client.modules.auth,
                serverClientId:
                    "919896718793-f9hs1qfuoatseq699ls9snfhf2sipkis.apps.googleusercontent.com",
                redirectUri: Uri.parse('http://localhost:8080/googlesignin'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
