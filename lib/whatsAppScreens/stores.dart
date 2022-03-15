import 'package:flutter/material.dart';

class stores extends StatefulWidget {
  const stores({Key? key}) : super(key: key);

  @override
  State<stores> createState() => _storesState();
}

class _storesState extends State<stores> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                child: Icon(Icons.push_pin),
              ),
            ),
            SizedBox(height: 10,),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Color.fromRGBO(76, 175, 80, 1),
              child: Icon(Icons.camera_alt),
            )
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 19),
        child: ListView(
          children: [
            Stack(
              children: [
                InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.only(right: 9, top: 9, bottom: 9),
                    height: 70,
                    width: double.infinity,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 45,
                          backgroundColor: Colors.yellow,
                          child: Container(
                            alignment: Alignment.bottomRight,
                            child: const CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 15,
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          margin: const EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Text(
                                "My status",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Tap to add status update",
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const Text(
              "Recent updates",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            status("pola", "20 minutes ago"),
            status("pola", "30 minutes ago"),
            status("pola", "40 minutes ago"),
            status("pola", "50 minutes ago"),
            status("pola", "1 houer ago"),
            status("pola", "2 houer ago"),
            status("pola", "3 houer ago"),
            status("pola", "4 houer ago"),
            status("pola", "5 houer ago"),
          ],
        ),
      ),
    );
  }
}

Widget status(String name, String data) {
  return Container(
    alignment: Alignment.centerLeft,
    height: 80,
    child: ListTile(
      leading: const CircleAvatar(
        backgroundImage: AssetImage("pathImage"),
        radius: 30,
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            children: [
              Text(data),
            ],
          )),
      onTap: () {},
    ),
  );
}
