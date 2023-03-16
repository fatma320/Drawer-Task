import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  var g = Colors.grey[700];
  var b = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Image.asset(
                "images/feedback.png",
                width: 350,
                height: 420,
              ),
            ),
             Text(
              "Your Feedback",
              style: TextStyle(
                  color: b,
                  fontWeight: FontWeight.w800,
                  fontSize: 22),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Text(
                'Give your best time for this moment',
                style: TextStyle(
                    color: g,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              width: 370,
              height: 120,
              child: Container(
                margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ), //BoxShadow
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 0.0,
                        spreadRadius: 0.0,
                      ), //BoxShadow
                    ],
                  ),
                child: const TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 50),
                    border: InputBorder.none,
                    hintText: "Enter your feedback" ,
                    hintStyle: TextStyle(color: Colors.grey , fontWeight: FontWeight.w500 , fontSize: 18),
                  ),
                )
              ), ),
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(onPressed:(){}, child: const Text('Send'),

                ),
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          
        ),
      ),
    );
  }
}
