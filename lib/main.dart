import 'package:flutter/material.dart';
import 'package:manicure/pages/RegPage.dart';
import 'package:manicure/pages/LogInPage.dart';
import 'package:manicure/pages/ForgotPasswordPage.dart';
void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'Flutter Demo',
      theme: ThemeData(

        textTheme: const TextTheme(

        ),
        useMaterial3: true,
      ),
      initialRoute: '/LogIn',
      routes: {
        '/LogIn': (context) =>  LogInPage(
          regPressed:(){
            Navigator.pushNamed(context, '/Reg');
          },
          forgotPressed:(){
          Navigator.pushNamed(context, '/Forgot');
          },
          logInPressed:(){

          }
        ),
        '/Reg': (context) => RegPage(
            regPressed:(){

            },
            logInPressed:(){
              Navigator.pushNamed(context, '/LogIn');
            }
        ),
        '/Forgot':(context) => ForgotPasswdPage(
            backPressed:(){
              Navigator.pushNamed(context, '/LogIn');
            },
            forgotPressed:(){

            },
        ),

      },
    );
  }
}
