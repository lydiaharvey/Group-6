import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'difficulty_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'settings_page.dart';

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

  Future<void> _loginWithGoogle() async {
    final googleSignIn = GoogleSignIn();
    final account = await googleSignIn.signIn();
    if (account != null) {
      _onLoginSuccess();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guessing Game',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _isLoggedIn ? const HomePage() : LoginPage(onLoginSuccess: _onLoginSuccess, usernameController: _usernameController, loginWithGoogle: _loginWithGoogle),
    );
  }
}

class LoginPage extends StatefulWidget {
  final void Function() onLoginSuccess;
  final TextEditingController usernameController;
  final Future<void> Function() loginWithGoogle;

  const LoginPage({Key? key, required this.onLoginSuccess, required this.usernameController, required this.loginWithGoogle}) : super(key: key);

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
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: widget.loginWithGoogle,
              child: const Text('CONTINUE WITH GOOGLE'),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SettingsPage()),
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to Guessing Game!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DifficultyPage()),
                );
              },
              child: const Text('START'),
            ),
          ],
        ),
      ),
    );
  }
}