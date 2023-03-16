import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  _NavigationBarState createState() {
    return _NavigationBarState();
  }
}

class _NavigationBarState extends State<NavigationBar> {
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

/// possible change 

/*

class _NavigationBarState extends State<NavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.10,
        width: MediaQuery.of(context).size.width,
        color: Colors.blueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.1,
                  MediaQuery.of(context).size.height * 0.1,
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.blueAccent,
                size: 50,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.1,
                  MediaQuery.of(context).size.height * 0.1,
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.emoji_events,
                color: Colors.blueAccent,
                size: 50,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.1,
                  MediaQuery.of(context).size.height * 0.1,
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_bag,
                color: Colors.blueAccent,
                size: 50,
              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
              style: IconButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.height * 0.1,
                  MediaQuery.of(context).size.height * 0.1,
                ),
              ),
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.blueAccent,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
