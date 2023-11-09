import 'package:flutter/material.dart';
import 'package:project_mobile/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: _router,
//     );
//   }
// }
