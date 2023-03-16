import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsPage extends StatelessWidget {
  final String title;

  const SettingsPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Login Information',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _LoginStatus(),
          ],
        ),
      ),
    );
  }
}



class _LoginStatus extends StatefulWidget {
  const _LoginStatus({Key? key}) : super(key: key);

  @override
  __LoginStatusState createState() => __LoginStatusState();
}

class __LoginStatusState extends State<_LoginStatus> {
  bool _isLoggedIn = false;
  String _username = '';

  @override
  void initState() {
    super.initState();
    _loadLoginStatus();
    _loadUsername();
  }


  void _loadLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _isLoggedIn = prefs.getBool('isLoggedIn') ?? false;
    });
  }

  void _loadUsername() async {
    final prefs = await SharedPreferences.getInstance();
    final savedUsername = prefs.getString('username');
    setState(() {
      _username = savedUsername ?? '';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Logged in: ${_isLoggedIn ? 'Yes' : 'No'}'),
        if (_isLoggedIn) Text('Username: $_username'),
      ],
    );
  }
}
