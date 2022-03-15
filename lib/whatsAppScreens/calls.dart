import 'package:flutter/material.dart';

class call extends StatefulWidget {
  const call({Key? key}) : super(key: key);

  @override
  State<call> createState() => _callState();
}

class _callState extends State<call> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        children: [
          list("pola hany", "send", "10/3/2022 , 11.55 pm"),
          list("pola", "Reception", "10/3/2022 , 11.25 pm"),
          list("pola hany", "Reception", "10/3/2022 , 10.25 pm"),
          list("pola", "send", "10/3/2022 , 10.00 pm"),
          list("pola", "sendsda", "10/3/2022 , 10.00 pm"),
          list("pola hany", "send", "10/3/2022 , 09.15 pm"),
          list("pola", "send", "10/3/2022 , 08.25 pm"),
          list("pola", "Reception", "10/3/2022 , 07.25 pm"),
          list("pola", "Reception", "10/3/2022 , 06.25 pm"),
          list("pola", "send", "10/3/2022 , 05.25 pm"),
          list("pola", "send", "10/3/2022, 04.25 pm"),
        ],
      ),
      floatingActionButton: Container(
        alignment: Alignment.topRight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 40,
              width: 40,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.black,
                child: Icon(Icons.video_call_rounded),
              ),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(76, 175, 80, 1),
              child: Icon(Icons.add_call),
            )
          ],
        ),
      ),

    );
  }
}

Widget list(String name, String st, String data) {
  return Container(
    height: 80,
    alignment: Alignment.centerLeft,
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage("pathImage"),
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
              sendOrReception(st),
              Text(data),
            ],
          )),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.call,
            color: Color.fromRGBO(76, 175, 80, 1),
            size: 30,
          )
        ],
      ),
      onTap: () {},
    ),
  );
}

Icon sendOrReception(String casePhone) {
  if (casePhone == "send") {
    return Icon(
      Icons.arrow_forward,
      color: Color.fromRGBO(76, 175, 80, 1),
    );
  } else if (casePhone == "Reception") {
    return Icon(
      Icons.arrow_back,
      color: Colors.red,
    );
  } else {
    return Icon(
      Icons.call,
      color: Colors.grey,
    );
  }
}
