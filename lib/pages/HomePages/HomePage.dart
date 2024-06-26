import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard_plus/flutter_tindercard_plus.dart';
class HomePage extends StatefulWidget {
  final VoidCallback manicureMasterPressed;
  final VoidCallback notionsPressed;
  final VoidCallback calendarPressed;
  final VoidCallback chatPressed;
  final VoidCallback configPressed;
  const HomePage({
    super.key,
    required this.manicureMasterPressed,
    required this.notionsPressed,
    required this.calendarPressed,
    required this.chatPressed,
    required this.configPressed,

  });
  @override
  HomePageState createState() => HomePageState();
}
  class HomePageState extends State<HomePage>
      with TickerProviderStateMixin {
  double _opacity = 0.0;
  double _topPosition = 40.0;
  List<Map<String,String>> data =[
    {"name": "Алина", "location": "улица Красный Путь", "image": "assets/images/master.jpg"},
    {"name": "Алина", "location": "улица Красный Путь", "image": "assets/images/master.jpg"},
    {"name": "Алина", "location": "улица Красный Путь", "image": "assets/images/master.jpg"}, //сделать чтобы данные брались из firebase
  ];
  @override
  void initState(){
    super.initState();
    _startAnimation();
  }

  void _startAnimation(){
    Timer(const Duration(seconds: 1), (){
      setState(() {
        _opacity = 1.0;
        _topPosition = 0;
      });
    });
    Timer(const Duration(seconds: 5), (){
      setState(() {
        _opacity = 0.0;
        _topPosition = 0;
      });
    });
  }

  final GlobalKey tooltipKey = GlobalKey();
  void toggleTooltip() {
    final dynamic tooltip = tooltipKey.currentState;
    tooltip.ensureTooltipVisible();
  }

  @override
  Widget build(BuildContext context) {
    final CardController controller = CardController();
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
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Expanded (
                         child: Stack(
                            children:[
                              AnimatedPositioned(
                                duration: const Duration(seconds: 1),
                                top: _topPosition,
                                left: 0,
                                right: 10,
                                child: AnimatedOpacity(
                                  opacity: _opacity,
                                  duration: const Duration(seconds: 1),
                                  child: const Text('Добро пожаловать, Дмитрий!',
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
                              )
                          ]),
                        ),
                      ElevatedButton( //пидараска убегающая
                          style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                          elevation: 0,
                          minimumSize: const Size(70,70),
                          backgroundColor: const Color.fromARGB(250, 255, 255, 255).withOpacity(0.2)   ,
                          ),
                          onPressed: widget.notionsPressed,
                          child: const Icon(Icons.notifications_outlined,color: Colors.white, size: 48,))

                    ],
                  ),
              ),
            ),
          ),
          ),
           Center(
           child:  TinderSwapCard(
              swipeUp: false,
              swipeDown: false,
              totalNum: data.length,
              stackNum: 3,
              swipeEdge: 4.0,
              maxWidth: 299,
              maxHeight: 495,
              minWidth: 293,
              minHeight: 488,
              cardBuilder: (context, index) => Card(
               // анкеты маникюрщиц
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
                        Row(
                         children:[
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
                                    ),
                                  ]),
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
                                    ),
                                  ],),
                    ]
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
                                   onPressed: widget.manicureMasterPressed,
                                   child: const Icon(Icons.arrow_forward_sharp,
                                     size: 40,
                                     color: Color.fromARGB(250, 252, 131, 210),
                                   ))
                           )
                    ],
                  )
                ]),
                  )
                  ])
                ),
              cardController: controller,
              swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
                if (align.x < 0) {
                  // Card is LEFT swiping
                } else if (align.x > 0) {
                  // Card is RIGHT swiping
                }
              },
              swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
                print("Card $index swiped $orientation");
              },
            )
           ),],
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