import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Start Login Bottom
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 95, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                //minimumSize: Size(250, 36.0),
                onPressed: () {
                  Navigator.pushNamed(context, "/login");
                },

                //side: BorderSide(),

                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )),
            // start SzeBox
            const SizedBox(
              height: 20,
            ),
            // start Sign Up bottom
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(horizontal: 85, vertical: 10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
                ),
                //minimumSize: Size(250, 36.0),
                onPressed: () {
                  Navigator.pushNamed(context, "/signup");
                },

                //side: BorderSide(),

                child: const Text(
                  "sign up",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
