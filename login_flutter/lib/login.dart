import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log In"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // start Email Input
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 20),
              margin: EdgeInsets.only(top: 20, bottom: 20),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              // ignore: prefer_const_constructors
              child: TextField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    size: 25,
                  ),
                  //contentPadding: EdgeInsets.all(3),
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: "Email",
                  //labelText: "Email",

                  //labelStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  //border: OutlineInputBorder(),
                  border: InputBorder.none,
                ),
              ),
            ),
            //Start password Input
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 20),
              margin: const EdgeInsets.only(top: 0, bottom: 20),
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: Colors.black26,
                ),
              ),
              child: const TextField(
                textInputAction: TextInputAction.done,
                obscureText: true,
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.all(3),
                  hintText: "Passport",
                  prefixIcon: Icon(Icons.password),
                  suffixIcon: Icon(Icons.visibility),
                  //labelText: "Email",
                  //labelStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  //border: OutlineInputBorder(),
                  border: InputBorder.none,
                ),
              ),
            ),
            
            // start ElevatedButton Enter
             ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 95, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                //minimumSize: Size(250, 36.0),
                onPressed: () {
                  
                },
                
                //side: BorderSide(),

                child: const Text(
                  "Enter",
                  style: TextStyle(fontSize: 24, ),
                )),
                const SizedBox(
                  height: 20,
                ),
                 TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: const Text('Or SignUp'),
            ),
          ],
        ),
      ),
    );
  }
}
