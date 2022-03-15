import 'package:flutter/material.dart';
import 'package:singupwhatsapp/screens/card.dart';
import 'package:singupwhatsapp/whatsAppScreens/calls.dart';
import 'package:singupwhatsapp/whatsAppScreens/chats.dart';
import 'package:singupwhatsapp/whatsAppScreens/stores.dart';

void main() {
  runApp(whatsapp());
}

class whatsapp extends StatefulWidget {
  const whatsapp({Key? key}) : super(key: key);

  @override
  State<whatsapp> createState() => _whatsappState();
}

class _whatsappState extends State<whatsapp> {
  @override
  List screens = [
    chats(),
    stores(),
    call(),
  ];
  int index = 0;

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            onTap: (index_tap) {
              setState(() {
                index = index_tap;
              });
            },
            tabs: [
              Tab(
                child: Text(
                  "CHATS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "STATUS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Tab(
                child: Text(
                  "CALLS",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          backgroundColor: Color.fromRGBO(76, 175, 80, 1),
          title: Text(
            "WatesApp",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Icon(
              Icons.search,
              size: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.brightness_5_sharp),
            SizedBox(
              width: 10,
            ),
          ],
        ),
        drawer: Drawer(
          child: card(),
        ),
        body: screens[index],
      ),
    );
  }
}