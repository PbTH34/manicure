import 'package:flutter/material.dart';
import 'package:manicure/pages/LoginPages/RegPage.dart';
import 'package:manicure/pages/LoginPages/LogInPage.dart';
import 'package:manicure/pages/LoginPages/ForgotPasswordPage.dart';
import 'package:manicure/pages/HomePages/HomePage.dart';
void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:'manicure',
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
            Navigator.pushNamed(context, '/Home');
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
        '/Home': (context) => HomePage(
            manicureMasterPressed:(){
              Navigator.pushNamed(context, '/LogIn');
            } ,
            notionsPressed:(){

            } ,
            calendarPressed :(){

            } ,
            chatPressed:(){

            } ,
            configPressed:(){

            } ,
        ),

      },
    );
  }
}
