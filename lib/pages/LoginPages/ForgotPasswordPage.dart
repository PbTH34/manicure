import 'package:flutter/material.dart';
import 'dart:ui';

class ForgotPasswdPage extends StatelessWidget {
  final VoidCallback backPressed;
  final VoidCallback forgotPressed;

   ForgotPasswdPage({
    super.key,
    required this.backPressed,
    required this.forgotPressed,
  });


  final GlobalKey tooltipKey = GlobalKey();

  void toggleTooltip() {
    final dynamic tooltip = tooltipKey.currentState;
    tooltip.ensureTooltipVisible();
    forgotPressed();
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


              Center(
                  child: Padding(padding: const EdgeInsets.fromLTRB(30,0,30,50),

                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                             ClipPath(

                                child:  Text('Forgot Password',

                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: const Color.fromARGB(250, 252, 131, 210),
                                        fontSize: 50,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Lato',
                                        shadows: [
                                            const Shadow(
                                              color: Colors.white,
                                              offset: Offset(0, 0),
                                              blurRadius: 16,
                                            ),
                                            Shadow(
                                              color: Colors.transparent.withOpacity(0.0),
                                              offset: const Offset(0, 0),
                                              blurRadius: 0,
                                            ),
                                        ]
                                    )
                                )
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

                                    child: Stack(
                                      children:[


                                        ElevatedButton(onPressed: backPressed,

                                          style: ButtonStyle(
                                            elevation: MaterialStateProperty.all(0),
                                            backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 252, 131, 210).withOpacity(0.0)),
                                            minimumSize: MaterialStateProperty.all(const Size(50,60)),
                                            side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.transparent)),
                                          ),
                                          child: const Icon(Icons.arrow_back_rounded,
                                            size: 30,
                                            color:Color.fromARGB(250, 252, 131, 210),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(30,10,30,0),
                                          child:Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [

                                            const SizedBox(height: 60.0),
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

                                            const SizedBox(height: 25.0),
                                            Tooltip(
                                              key: tooltipKey,
                                              message: 'Сейчас вам придет сообщение с вашим паролем от этого аккаунта(еблан)',
                                              preferBelow: true,
                                               decoration:  BoxDecoration(
                                                 color: const Color.fromARGB(250, 252, 131, 210).withOpacity(0.25),
                                                 borderRadius: BorderRadius.circular(20.0),
                                               ) ,
                                               textStyle: const TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 15,
                                                 fontFamily: 'Lato',
                                               ),

                                               child: TextButton( //кнопочка)
                                                 onPressed: toggleTooltip,
                                                 style: ButtonStyle(
                                                   minimumSize: MaterialStateProperty.all(const Size(276,41)),
                                                   side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Color.fromARGB(100, 252, 131, 210))),
                                                ),
                                                 child: const Text("Восстановить", style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25,
                                                  fontFamily: 'Lato',
                                                 ),
                                                 ),
                                               ),
                                            ),
                                              ]
                                          ),
                                        )
                                      ]
                                    )
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

