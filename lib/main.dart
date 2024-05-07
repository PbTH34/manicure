
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void logIn() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Stack(
          fit: StackFit.expand,
          children: [
        Container(
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage('assets/images/background.jpg'),
        fit: BoxFit.cover
        )
        ),
        ),

        Center(

          child: ClipRect(

            child: BackdropFilter(

            filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),

                child:Container(
                    width: 307,
                    height: 310,
                    color: const Color.fromARGB(100, 252, 131, 210).withOpacity(0.2),
                    padding:EdgeInsets.all(30.0),
                    alignment: Alignment.center,

                  child:Column(

                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        TextField( // поле логина
                        decoration: InputDecoration(
                          labelText: 'Введите номер телефона',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                        SizedBox(height: 24.0),
                        TextField( // поле пароля
                          obscureText: true, // спрятал пароль
                          decoration: InputDecoration(
                            labelText: 'Введите пароль',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                            ),
                            ),
                          ),
                        SizedBox(height: 24.0),
                        OutlinedButton( //кнопочка)
                        onPressed: logIn,
                        style: ButtonStyle(
                          side: MaterialStateProperty.all<BorderSide>(BorderSide(color: Color.fromARGB(100, 252, 131, 210))),
                        ),
                          child: const Text("Войти", style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Lato',
                      ),
                 ),
                ),
              ]
            ),
          )
        ),
        ),
        ),
        ],
      ),
  );

}
}
