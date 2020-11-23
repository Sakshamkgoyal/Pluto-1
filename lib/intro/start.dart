import 'package:flutter/material.dart';
import 'package:pluto/Services/authentication_service.dart';
import 'package:pluto/intro/signup.dart';
import 'package:pluto/main.dart';
import 'package:provider/provider.dart';

class SignInPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
            ),
          ),
          TextField(
            controller: passwordController,
            decoration: InputDecoration(
              labelText: "Password",
            ),
          ),
          RaisedButton(
            onPressed: () {
              context.read<AuthenticationService>().signIn(
                email: emailController.text.trim(),
                password: passwordController.text.trim(),
              );
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyApp()));
            },
            child: Text("Sign in"),
          ),
          RaisedButton(onPressed: (){
            Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
          },
          child: Text('Sign Up'),
          )
        ],
      ),
    );
  }
}