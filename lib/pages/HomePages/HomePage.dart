import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
class HomePage extends StatelessWidget {
  final VoidCallback manicureMasterPressed;
  final VoidCallback notionsPressed;
  final VoidCallback calendarPressed;
  final VoidCallback chatPressed;
  final VoidCallback configPressed;

  HomePage({
    super.key,
    required this.manicureMasterPressed,                                                                                                                                                                                                                                                                                                                                                                                                        
    required this.notionsPressed,
    required this.calendarPressed,
    required this.chatPressed,
    required this.configPressed,
  });


  final GlobalKey tooltipKey = GlobalKey();

  void toggleTooltip() {
    final dynamic tooltip = tooltipKey.currentState;
    tooltip.ensureTooltipVisible();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset:false,
      body: Stack(
        children: [
          Container(  //белый задник
            color: Colors.white,
          ),
          Expanded(
              child: Positioned( //черный задник
              top: 0,
              left: 0,
                child: Container(  //блядская залупа кнопка убегает
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50)),
                ),
                height: 300,
                width: MediaQuery.of(context).size.width,

                child:Padding(
                  padding: const EdgeInsets.only(top: 50, left: 40),
                  child:  Row( // row с текстом приветсвия и кнопкой
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Expanded (
                        child: Text('Добро пожаловать, Дмитрий!',
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Be Vietnam Pro',
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      ElevatedButton( //пидараска убегающая
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                          elevation: 0,
                          minimumSize: const Size(70,70),
                          backgroundColor: const Color.fromARGB(250, 255, 255, 255).withOpacity(0.2)   ,
                          ),
                          onPressed: notionsPressed,
                          child: const Icon(Icons.notifications_outlined,color: Colors.white, size: 48,))

                    ],
                  ),
              ),
            ),
          ),
          ),
          Center( // анкеты маникюрщиц
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black ,
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: Offset(0,4),
                      )
                    ],
                    borderRadius:BorderRadius.circular(20.0),
                    color: Colors.white,

                  ),
                  height:488 ,
                  width: 293,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 401,
                        width: 295,
                        decoration:  BoxDecoration(
                          border: Border.all(color: const Color.fromARGB(250, 252, 131, 210)),
                        borderRadius: BorderRadius.circular(19.0),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/master.jpg'),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      const Column(
                        children: [
                          Row(
                              children: [
                                SizedBox(width: 24,height: 35,),
                                Text('Мастер Алина',
                                style: TextStyle(
                                  color: Color.fromARGB(250, 0, 0, 0),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  fontFamily: 'Be Vietnam pro',
                                ),
                                ),]),
                          Row(
                              children: [
                                SizedBox(width: 22),
                                Icon(Icons.location_on_outlined, color: Color.fromARGB(125, 0, 0, 0),),
                                Text('улица Красный Путь',
                                  style: TextStyle(
                                    color: Color.fromARGB(125, 0, 0, 0),
                                    fontFamily:'Be Vietnam pro',
                                    fontSize: 15,
                                    ),
                                )
                              ],)
                    ]
                      )
                    ],
                  )
                ),
                Positioned( // кнопка скама на бабки
                    right: 0,
                    bottom: 0,
                    child: ElevatedButton(

                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          elevation: 0,
                          backgroundColor: const Color.fromARGB(250, 252, 131, 210).withOpacity(0.0),
                          minimumSize: const Size(80,80),
                          side: const BorderSide(color: Colors.transparent),
                        ),
                        onPressed: manicureMasterPressed,
                        child: const Icon(Icons.arrow_forward_sharp,
                          size: 40,
                          color: Color.fromARGB(250, 252, 131, 210),
                        ))
                )
              ],
            ),
          ),

        ],

      ),
      bottomNavigationBar: BottomNavigationBar( //нижняя навигация
        type: BottomNavigationBarType.fixed,
        iconSize: 35,
        unselectedIconTheme:const IconThemeData(
          opacity: 0.2,
        ),
        selectedIconTheme:const IconThemeData(
          opacity: 1,
          size: 45
        ),
        elevation: 30,
        showUnselectedLabels: false,
        selectedItemColor: const Color.fromARGB(250, 252, 131, 210),
        backgroundColor: const Color.fromARGB(255, 225, 218, 218),
          items: const [
            BottomNavigationBarItem(label: 'Главная' ,icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: 'Календарь' ,icon: Icon(Icons.calendar_month_outlined)),
            BottomNavigationBarItem(label: 'Чат' ,icon: Icon(Icons.chat)),
            BottomNavigationBarItem(label: 'Настройки' ,icon: Icon(Icons.settings)),
          ],
      ),

    );
  }
}