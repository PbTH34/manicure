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
      body: Stack(

        children: [
          Container(

            color: Colors.white,
          ),
            Positioned(
              top: 0,
              left: 0,
              child:
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                height: 300,
                width: 1000,
              ),
            ),
          Center(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color:Colors.black ,
                        blurRadius: 20,
                        spreadRadius: 0,
                        offset: Offset(0, 4),
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
                          border: const Border(
                            bottom: BorderSide(color: Color.fromARGB(250, 252, 131, 210)),
                            right: BorderSide(color: Color.fromARGB(250, 252, 131, 210)),
                            left: BorderSide(color: Color.fromARGB(250, 252, 131, 210)),
                            top: BorderSide(color: Color.fromARGB(250, 252, 131, 210))),
                          borderRadius: BorderRadius.circular(19.0),
                          image: const DecorationImage(
                            image: AssetImage('assets/images/master.jpg'),
                              fit: BoxFit.cover
                          )
                        ),
                      ),
                      const Column(
                        children: [
                          Flex(
                              direction: Axis.horizontal,
                              children: [
                                Text('Мастер Алина'),]),
                          Flex(
                              direction: Axis.horizontal,
                              children: [
                                Icon(Icons.location_on_outlined,),
                                Text('улица Красный Путь')
                              ],)
                    ]
                      )
                    ],
                  )
                ),
                Positioned(
                    right: 0,
                    bottom: 0,
                    child: ElevatedButton(
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          backgroundColor: MaterialStateProperty.all(const Color.fromARGB(250, 252, 131, 210).withOpacity(0.0)),
                          minimumSize: MaterialStateProperty.all(const Size(80,80)),
                          side: MaterialStateProperty.all<BorderSide>(const BorderSide(color: Colors.transparent)),
                        ),
                        onPressed: manicureMasterPressed,
                        child: const Icon(Icons.arrow_forward_sharp,
                        size: 40,
                        ))
                )
              ],
            ),
          ),

        ],

      ),
      bottomNavigationBar: BottomNavigationBar(
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