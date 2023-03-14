import 'package:flutter/material.dart';
import 'navigationbar.dart';

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
            height: MediaQuery.of(context).size.height * 0.45,
            width: MediaQuery.of(context).size.width * 0.75,
            color: Colors.green,
          )),
      navigationBar(), informationBar()

    ])

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}



class informationBar extends StatefulWidget {
  const informationBar({Key? key}) : super(key: key);

  @override
  informationBarState createState() => informationBarState();
}

class informationBarState extends State<informationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    style: IconButton.styleFrom(
                        fixedSize: Size(MediaQuery.of(context).size.height * 0.1,
                            MediaQuery.of(context).size.height * 0.1)),
                    onPressed: () {},
                    icon: Icon(color: Colors.white, Icons.info,size: 50)),
              ]
          )
        )
    );
  }
}