import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pluto/Services/authentication_service.dart';
import 'package:pluto/intro/splash.dart';
import 'package:pluto/intro/splash2.dart';
import 'package:provider/provider.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
        create: (context) => context.read<AuthenticationService>().authStateChanges,
      )
    ],
      child: MaterialApp(
        builder: (context, child){
          return ScrollConfiguration(
            behavior: MyBehavior(),
            child: child,
          );
        },
        theme: ThemeData(fontFamily: 'em'),
          home : AuthenticationWrapper(),

        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      return splasht();
    }
    return splash();
  }
}
