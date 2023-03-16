import 'package:flutter/material.dart';
import 'difficulty_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'settings_page.dart';

// rest of the code

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isLoggedIn = false;
  final TextEditingController _usernameController = TextEditingController();

  void _onLoginSuccess() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('isLoggedIn', true);
    prefs.setString('username', _usernameController.text);
    setState(() {
      _isLoggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guessing Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _isLoggedIn ? const HomePage() : LoginPage(onLoginSuccess: _onLoginSuccess, usernameController: _usernameController),
    );
  }
}

class LoginPage extends StatefulWidget {
  final void Function() onLoginSuccess;
  final TextEditingController usernameController;

  const LoginPage({Key? key, required this.onLoginSuccess, required this.usernameController}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isErrorVisible = false;

  bool _validateInputs() {
    final username = _usernameController.text;
    final password = _passwordController.text;
    if (username.isEmpty || password.isEmpty) {
      setState(() => _isErrorVisible = true);
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'USERNAME',
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'PASSWORD',
              ),
            ),
            if (_isErrorVisible)
              const SizedBox(height: 16, child: Text('Please enter username and password')),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                if (_validateInputs()) {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())).then((value) {
                    if (value == true) {
                      widget.onLoginSuccess();
                    }
                  });
                }
              },
              child: const Text('LOGIN'),
            ),
          ],
        ),
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('GUESS IT'),
        ),
        body: const Center(
          child: Text('Home Page'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
              label: 'Play',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.quiz),
              label: 'Quiz',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: 'Badges',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          onTap: (index) {
            if (index == 0) { // check if the Play tab was tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DifficultyPage(title: 'Difficulty Page')),
              );
            } else if (index == 3) { // check if the Settings tab was tapped
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage(title: 'Settings')),
              );
            }
          },
          currentIndex: 1, // set the selected index to the Quiz tab
        ),
      ),
    );
  }
}

