import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget =  StartScreen(
      switchScreen,
      Color.fromARGB(255, 216, 131, 90),
      Color.fromARGB(255, 184, 52, 14),
      Color.fromARGB(255, 202, 121, 98),
    );
    if (activeScreen == 'questions-screen') {
      screenWidget =  QuestionsScreen();
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Quiz App',
              style: TextStyle(
                color: Colors.black87,
                fontSize: 25,
                //backgroundColor: Color.fromARGB(255, 225, 208, 28),
              ),
            ),
          ),
        ),
        // body: activeScreen == 'start-screen'
        //     ? StartScreen(switchScreen)
        //     : const QuestionsScreen(),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 220, 118, 92),
                Color.fromARGB(255, 147, 42, 15),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}

// Widget? StartScreen(void Function() switchScreen) {
//   return null;
// }
