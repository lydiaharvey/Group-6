import 'package:flutter/material.dart';

void main() {
  //var green = Color(sadasjk)
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Align(
          alignment: Alignment(0, -0.5),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.75,
            color: Colors.green,
          )),
      navigationBar()
    ])

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}

class navigationBar extends StatefulWidget {
  const navigationBar({Key? key}) : super(key: key);

  @override
  _navigationBarState createState() => _navigationBarState();
}

class _navigationBarState extends State<navigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width,
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.height * 0.1,
                          MediaQuery.of(context).size.height * 0.1)),
                  onPressed: () {},
                  icon: Icon(color: Colors.white, Icons.home,size: 50)),
              IconButton(
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.height * 0.1,
                          MediaQuery.of(context).size.height * 0.1)),
                  onPressed: () {},
                  icon: Icon(color: Colors.white, Icons.emoji_events,size: 50)),
              IconButton(
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.height * 0.1,
                          MediaQuery.of(context).size.height * 0.1)),
                  onPressed: () {},
                  icon: Icon(color: Colors.white, Icons.shopping_bag,size: 50)),
              IconButton(
                  padding: EdgeInsets.zero,
                  style: IconButton.styleFrom(
                      fixedSize: Size(MediaQuery.of(context).size.height * 0.1,
                          MediaQuery.of(context).size.height * 0.1)),
                  onPressed: () {},
                  icon: Icon(color: Colors.white, Icons.settings,size: 50,))
            ],
          ),
        ));
  }
}
