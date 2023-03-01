import 'package:flutter/material.dart';
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