import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz,{super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(            //Put in the center
      child: Column(
        mainAxisSize: MainAxisSize.min, //Center the children
        children: [
          Image.asset( //Image 
              'assets/images/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(150, 223, 221, 220), //Add an overlay color on the image
            ),
          // Opacity(
          //   opacity: 0.5,        //Transparency
          //   child: Image.asset( //Image 
          //     'assets/images/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(              //Extra spacing
            height: 70,
          ),
          const Text(             //Text decoration and Stuff
            'Learn Flutter the fun way!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 30
          ),
          OutlinedButton.icon(      // Button + Icon 
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            icon: const Icon(Icons.arrow_right_alt), //Icon here
            label: const Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}