import 'package:flutter/material.dart';

class BadgesPage extends StatelessWidget {
  final String title;

  const BadgesPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('Badges Page'),
      ),
    );
  }
}
