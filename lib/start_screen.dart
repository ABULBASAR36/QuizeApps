import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 12, 233, 78),
            Color.fromARGB(255, 83, 27, 237),
            Color.fromARGB(255, 11, 55, 232),
            Color.fromARGB(255, 230, 56, 3),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: const Offset(5, 5),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Image.asset(
                'assets/images/flutter_quiz_no_bg.png',
                width: 300,
                color: const Color.fromARGB(150, 255, 255, 255),
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            ShaderMask(
              shaderCallback: (bounds) => const LinearGradient(
                colors: [
                  Colors.orangeAccent,
                  Colors.pinkAccent,
                  Colors.yellowAccent,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ).createShader(bounds),
              child: Text(
                'Learn Flutter the fun way!',
                style: GoogleFonts.lato(
                  color: Colors.white, // Base color (will be overridden by ShaderMask)
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 61, 232, 4),
                side: const BorderSide(color: Color.fromARGB(255, 101, 242, 7), width: 2),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              icon: const Icon(Icons.arrow_right_alt),
              label: Text('Start Quiz',
               style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 61, 238, 1), // Base color (will be overridden by ShaderMask)
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
