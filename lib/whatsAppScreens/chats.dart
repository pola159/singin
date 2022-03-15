import 'package:flutter/material.dart';

class chats extends StatefulWidget {
  const chats({Key? key}) : super(key: key);

  @override
  State<chats> createState() => _chatsState();
}

class _chatsState extends State<chats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
        child: Icon(Icons.message),
      ),
      body: Container(
          child: ListView(
            children: [
              list("pola hany", "images/pola.jpg", "hi flutter", "5",
                  "14.25 am"),
              list("my orange", "images/pola1.png", "hi flutter", "0",
                  "14.25 am"),
              list("pola hany", "images/pola2.png", "hi flutter", "8",
                  "14.25 am"),
              list("pola hany", "images/pola.jpg", "hi flutter", "6",
                  "14.25 am"),
              list("pola hany", "images/pola1.png", "hi flutter", "1",
                  "14.25 am"),
              list("pola hany", "images/pola2.png", "hi flutter", "2",
                  "14.25 am"),
              list("pola hany", "images/pola.jpg", "hi flutter", "4",
                  "14.25 am"),
              list("pola hany", "images/pola1.png", "hi flutter", "0",
                  "14.25 am"),
              list("pola hany", "images/pola2.png", "hi flutter", "7",
                  "14.25 am"),
              list("pola hany", "images/pola.jpg", "hi flutter", "9",
                  "14.25 am"),
              list("pola hany", "images/pola1.png", "hi flutter", "51",
                  "14.25 am"),
              list("pola hany", "images/pola2.png", "hi flutter", "0",
                  "14.25 am"),
            ],
          ),
      ),
    );
  }
}

Widget list(String name, String pathImage, String massage,
    String numberOfMassage, String data) {
  return Container(
    height: 80,
    alignment: Alignment.centerLeft,
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
              color: Color.fromRGBO(150, 150, 150, 0.7),
              width: 1,
            )
        )
    ),
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(pathImage),
        radius: 30,
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.check_outlined,
                color: Colors.blue,
              ),
              Text(massage),
            ],
          )),
      trailing: Column(
        children: [
          numberMassages(numberOfMassage , data),
        ],
      ),
      onTap: () {},
    ),
  );
}

Widget numberMassages(String x , String d) {
  if (x == "0") {
    return Column(
      children: [
        Text(d , style: TextStyle(
          color: Color.fromRGBO(200, 200, 200, 1),
        ),),
      ],
    );
  }
  return Column(
    children: [
      Text(d , style: TextStyle(
        color: Color.fromRGBO(76, 175, 80, 1),
      ),),
      SizedBox(
        height: 8,
      ),
      CircleAvatar(
        child: Text(
          x,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        radius: 12,
        backgroundColor: Color.fromRGBO(76, 175, 80, 1),
      )
    ],
  );
}
