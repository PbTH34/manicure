import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class LogInPage extends StatelessWidget {
  final VoidCallback regPressed;
  final VoidCallback logInPressed;
  final VoidCallback forgotPressed;

  const LogInPage({
    super.key,
    required this.regPressed,
    required this.logInPressed,
    required this.forgotPressed,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        resizeToAvoidBottomInset:false,
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


              Center(
                  child: Padding(padding: const EdgeInsets.fromLTRB(30,0,30,50),

                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                             Container(
                                width: 270,

                                child:  Stack(
                                    alignment: Alignment.center,
                                children: [
                                  const Text('LogIn',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Color.fromARGB(250, 252, 131, 210),
                                        fontSize: 100,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lato',
                                    )
                                ),
                                  Positioned(
                                   right: 20,
                                   top: 12,
                                    child: Text('LogIn',
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context).textTheme.displayMedium?.copyWith(
                                       foreground: Paint()
                                        ..style = PaintingStyle.stroke
                                        ..color = const Color.fromARGB(250, 252, 131, 210)
                                        ..strokeWidth = 1,
                                        fontSize: 102,
                                  )))
                      ]
                            ),
                             ),

                            ClipRRect( //чтобы картинка размывалась тока позади контейнера
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
                                    padding:const EdgeInsets.fromLTRB(30,0,30,0),

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

                                            onPressed: forgotPressed,
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
                                              onPressed: regPressed,
                                              child:const Text("Зарегистрироваться",style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 13,
                                                fontFamily: 'Lato',
                                              )
                                                ,)
                                          ),
                                          const SizedBox(height: 0.0),
                                          TextButton( //кнопочка)

                                            onPressed: logInPressed,
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
                          ]
                      )
                  )
              )
            ]
        )
    );

  }
}