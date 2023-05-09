import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PointsScreen(),
    );
  }
}

class PointsScreen extends StatefulWidget {
  const PointsScreen({Key? key}) : super(key: key);

  @override
  _PointsScreenState createState() => _PointsScreenState();
}

class _PointsScreenState extends State<PointsScreen> {
  int _points = 0;

  @override
  void initState() {
    super.initState();
    _loadPoints();
  }

  void _loadPoints() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _points = prefs.getInt('points') ?? 0;
    });
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text(
        'My Points             Guess it',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
    ),
    body: Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/images/trophy.png',
                      width: 250,
                      height: 250,
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 24.0),
                      child: Text(
                        '$_points points',
                        style: const TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Points Needed for Next Rank:',
            style: TextStyle(fontSize: 18),
          ),
          if (_points < 501) ...[
            const SizedBox(height: 8),
            const Text('Bronze (0-500)'),
          ] else if (_points < 1001) ...[
            const SizedBox(height: 8),
            const Text('Silver (501-1000)'),
          ] else if (_points < 1501) ...[
            const SizedBox(height: 8),
            const Text('Gold (1001-1500)'),
          ],
        ],
      ),
    ),
  );
}
}