import 'package:flutter/material.dart';
import 'package:singupwhatsapp/screens/whatsapp.dart';

class singupclass extends StatefulWidget {
  const singupclass({Key? key}) : super(key: key);

  @override
  State<singupclass> createState() => _singupclassState();
}

class _singupclassState extends State<singupclass> {
  TextEditingController emailCont = TextEditingController();
  TextEditingController passCont = TextEditingController();
  var form = GlobalKey<FormState>();
  var form1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  const Text(
                    "Hello",
                    style: TextStyle(
                      fontSize: 130,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("sing into your Account"),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Form(
                      key: form,
                      child: TextFormField(
                        validator: (val) {
                          if (!(val!.contains('@gmail.com'))) {
                            return "enter email have @gmail.com";
                          } else {
                            return null;
                          }
                        },
                        controller: emailCont,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.email),
                          label: const Text("Email"),
                          hintText: "enter you email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 18.0, right: 18, bottom: 18),
                    child: Form(
                      key: form1,
                      child: TextFormField(
                        validator: (val) {
                          if (!(val!.length > 5)) {
                            return "enter password more than 5 char";
                          } else {
                            return null;
                          }
                        },
                        controller: passCont,
                        obscureText: true,
                        decoration: InputDecoration(
                          hoverColor: Colors.white,
                          prefixIcon: const Icon(Icons.password),
                          label: const Text("password"),
                          hintText: "enter you password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text("forget you password ?")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    padding: const EdgeInsets.only(right: 10),
                    child: MaterialButton(
                      onPressed: () {
                        if (form.currentState!.validate() &&
                            form1.currentState!.validate() && emailCont.text == "admin@gmail.com" &&
                            passCont.text == "admin123" ) {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (ctx) {
                            return whatsapp();
                          }));
                        } else if (passCont.text == "" ||
                            emailCont.text == "") {
                          const snackBar = SnackBar(
                            content: Text(
                              "enter value in field",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        } else {
                          const snackBar = SnackBar(
                            content: Text(
                              "Wrong email or password",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [
                          Text(
                            "sing up ",
                            style: TextStyle(
                              fontSize: 40,
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.pink,
                            radius: 30,
                            child: Icon(
                              Icons.arrow_forward,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account ?"),
                        TextButton(
                            onPressed: () {}, child: const Text("Create")),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
