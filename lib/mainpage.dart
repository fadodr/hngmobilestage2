import 'package:flutter/material.dart';

class Mainpage extends StatefulWidget {
  @override
  _MainpageState createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  final mycontroller = TextEditingController();

  @override
  void dispose() {
    mycontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HNG TASK 2')),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/HNG.png',
                  width: 200,
                  height: 100,
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Form(
                      child: Column(
                    children: [
                      TextFormField(
                        textInputAction: TextInputAction.newline,
                        maxLines: 3,
                        controller: mycontroller,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                            hintText: 'Enter anything....'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      'You typed :',
                                      style: TextStyle(color: Colors.green),
                                    ),
                                    content: Text(mycontroller.text),
                                    actions: [
                                      TextButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text('okay'),
                                      )
                                    ],
                                  );
                                });
                          },
                          child: Text('Submit'))
                    ],
                  )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}