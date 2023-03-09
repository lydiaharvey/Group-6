import 'package:flutter/material.dart';
import 'navigation.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome to Guess It',
              style: Theme.of(context).textTheme.headline4,
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const QuizPage('Quiz'),
                  ),
                );
              },
              child: const Text('Start Quiz'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(title: 'Home'),
    );
  }
}
