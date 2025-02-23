import 'package:flutter/material.dart';

var startAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, this.color1, this.color2, this.color3,
      {super.key});
  final void Function() startQuiz;
  final Color color1;
  final Color color2;
  final Color color3;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
            color3,
          ],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.values.first,
          children: [
            Image.asset(
              "Asset/quiz-logo.png",
              width: 270,
              color: Color.fromARGB(255, 243, 243, 238),
            ),
            //Opacity(
            //   opacity: 0.7,
            //   child: Image.asset(
            //     "Asset/quiz-logo.png",
            //     width: 270,
            //   ),
            // ),
            SizedBox(
              height: 45,
            ),
            const Text(
              'Learn Flutter the fun way!',
              style: TextStyle(
                color: Color.fromARGB(255, 219, 229, 232),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: const Text(
                'Start Quiz',
              ),
            ),

            //fit: BoxFit.cover,
          ],
        ),
      ),
    );
  }
}