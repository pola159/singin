import 'package:flutter/material.dart';
import 'package:singupwhatsapp/screens/singup.dart';

class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      // Important: Remove any padding from the ListView.
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.pink,
            radius: 30,
            child: Icon(
              Icons.person,
              size: 40,
              color: Colors.white,

            ),
          ),
        ),
        ListTile(
          title: const Text('pola.hany789@gmail.com'),
          onTap: () {
          },
        ),
        ListTile(
          title: const Text('01225646785'),
          onTap: () {
          },
        ),ListTile(
          leading: Icon(Icons.arrow_back),
          onTap: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (c){return singupclass();}));
          },

        )
      ],
    );
  }
}
