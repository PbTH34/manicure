
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
               child:Padding(padding:  EdgeInsets.fromLTRB(30,0,30,370),
                   child:  Text('Sign Up',

                       textAlign: TextAlign.center,
                       style: TextStyle(
                         color: Color.fromARGB(250, 252, 131, 210),
                         fontSize: 100,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Lato',
                         shadows: [
                           Shadow(
                             color: Colors.pinkAccent,
                             offset: Offset(-6, 0),
                             blurRadius: 0,


                           ),
                           Shadow(
                               color: Color.fromARGB(250, 24, 24, 24),
                               offset: Offset(-5, 0),
                               blurRadius: 0,

                           )

                         ]
                       )
                    )
                 )
               )
            ]
           ),

          Center(
              child : ClipRRect( //чтобы картинка размывалась тока позади контейнера
                borderRadius: BorderRadius.circular(20.0),

                child: BackdropFilter(

                filter: ImageFilter.blur(sigmaX: 20.0, sigmaY: 20.0),

                    child:Container(
                      width: 307, // внешний вид контейнера по центру
                      height: 310,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(100, 252, 131, 210).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding:const EdgeInsets.fromLTRB(30,0,30,0),
                      alignment: Alignment.center,
                      child:Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          TextField( // поле логина
                            cursorColor: Colors.white,
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor:Colors.black,
                              contentPadding: const EdgeInsets.symmetric(vertical: 7.0, horizontal:17.0 ),
                              labelText:  'Введите номер телефона',
                              labelStyle: const TextStyle(
                                color: Color.fromARGB(70, 255, 255, 255),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20.0),
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
                                color: Color.fromARGB(70, 255, 255, 255),
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                              ),
                            ),
                          ),
                          const SizedBox(height: 0.0),
                          TextButton(
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(const Size(0,0))),
                            onPressed: forgotPassword,
                            child:const Text("Забыли пароль?", style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Lato',
                            )
                            ),
                          ),

                          TextButton(
                            style: ButtonStyle(

                              minimumSize: MaterialStateProperty.all(const Size(0,0))),
                            onPressed: signUp,
                            child:const Text("Зарегестрироваться",style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontFamily: 'Lato',
                            )
                              ,)
                          ),
                          OutlinedButton( //кнопочка)

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
