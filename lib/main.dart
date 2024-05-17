
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
  void signUp() {
    setState(() {

    });
  }
  void forgotPassword() {
    setState(() {

    });
  }
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
          Container( //картинка
            decoration: const BoxDecoration(
              image: DecorationImage(
              image: AssetImage('assets/images/background.jpg'),
              fit: BoxFit.cover
              )
            ),
          ),
           const Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

             Center(
               child:Padding(padding:  EdgeInsets.fromLTRB(30,0,30,0),
                  child: ClipPath(

                   child:  Text('Log In',

                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Color.fromARGB(250, 252, 131, 210),
                         fontSize: 100,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Lato',
                         shadows: [
                           Shadow(
                             color: Colors.transparent,
                             offset: Offset(-6, 0),
                             blurRadius: 0,
                           ),
                           Shadow(
                               color: Colors.white,
                               offset: Offset(0, 0),
                               blurRadius: 16,
                           )

                         ]
                       )
                    )
                  )
                 )
               )
            ]
           ),

          Center(

               child: ClipRRect( //чтобы картинка размывалась тока позади контейнера
                borderRadius: BorderRadius.circular(20.0),

                child: BackdropFilter(

                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),

                    child:Container(
                      width: 307, // внешний вид контейнера по центру
                      height: 310,
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(250, 252, 131, 210).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding:const EdgeInsets.fromLTRB(30,0,30,5),

                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const SizedBox(height: 20.0),
                          TextField( // поле логина

                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:Colors.black,
                              contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal:17.0 ),
                              labelText:  'Введите номер телефона',
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(125, 255, 255, 255),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24.0),
                          TextField(// поле пароля
                            obscureText: true, // спрятал пароль
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              alignLabelWithHint: true,
                              filled: true,
                              fillColor:Colors.black,
                              contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal:17.0 ),
                              labelText: 'Введите пароль',
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(125, 255, 255, 255),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                            ),
                          ),
                          const SizedBox(height: 0.0),
                          OutlinedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                            minimumSize: MaterialStateProperty.all(const Size(0,0)),
                            maximumSize: MaterialStateProperty.all(const Size(160,20)) ,
                            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.transparent)),
                            ),

                            onPressed: forgotPassword,
                            child:const Text("Забыли пароль?", style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Lato',
                            )
                            ),
                          ),
                          const SizedBox(height: 0.0),

                          OutlinedButton(
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.fromLTRB(0, 0, 0, 0)),
                              side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.transparent)),
                              minimumSize: MaterialStateProperty.all(const Size(0,0)),
                              maximumSize: MaterialStateProperty.all(const Size(180,20))
                            ),
                            onPressed: signUp,
                            child:const Text("Зарегестрироваться",style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Lato',
                            )
                              ,)
                          ),
                          const SizedBox(height: 0.0),
                          TextButton( //кнопочка)

                          onPressed: logIn,
                          style: ButtonStyle(

                            minimumSize: MaterialStateProperty.all(const Size(276,41)),
                            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color.fromARGB(100, 252, 131, 210))),

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
          )
          ]
              )
        );

}
}
