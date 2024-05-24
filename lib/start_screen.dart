import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/quiz-logo.png', 
          width: 300, 
          height: 300,
          color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(height: 50),
          Text(
            'Welcome to the Quiz!!',
            style: GoogleFonts.dancingScript(
                color: const Color.fromARGB(255, 230, 213, 242), 
                fontSize: 30
                ),
          ),
          const SizedBox(height: 50),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.white,
              ),
              icon: const Icon(Icons.arrow_right),
              label: const Text('Start Quiz'),
              )
        ],
      ),
    );
  }
}
