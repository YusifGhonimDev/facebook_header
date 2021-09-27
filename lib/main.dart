import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                buildProfileDescription(),
                buildProfileButtons(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row buildProfileDescription() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          "images/YusifGhonim.png",
          height: 100.0,
          width: 100.0,
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Text(
                      "Yusif Ghonim",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: const Icon(
                        CupertinoIcons.checkmark_alt_circle_fill,
                        color: Colors.blue,
                        size: 20.0,
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 4.0),
                  child: Text(
                    "Developer",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0.0, 24.0, 22.0, 0.0),
          child: Column(
            children: [
              const Icon(
                CupertinoIcons.hand_thumbsup,
                color: Colors.grey,
              ),
              Container(
                margin: const EdgeInsets.only(top: 5.0),
                child: const Text(
                  "Like",
                  textScaleFactor: 0.8,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row buildProfileButtons() {
    return Row(
      children: [
        Flexible(
          flex: 3,
          child: buildButton(
            buttonColor: Colors.blue,
            icon: Icons.add_circle,
            iconColor: Colors.white,
            text: "Follow",
            textColor: Colors.white,
          ),
        ),
        Flexible(
          flex: 1,
          child: buildButton(
            buttonColor: Colors.grey.shade200,
            icon: Icons.messenger_outline,
            iconColor: Colors.black,
          ),
        ),
        Flexible(
          flex: 1,
          child: buildButton(
            buttonColor: Colors.grey.shade200,
            icon: Icons.more_horiz,
            iconColor: Colors.black,
            textColor: Colors.black,
          ),
        ),
      ],
    );
  }

  Padding buildButton(
      {required Color buttonColor,
      IconData? icon,
      Color? iconColor,
      Color? textColor,
      String text = ""}) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0),
      child: OutlinedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
        ),
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Icon(icon, color: iconColor),
            ),
            Text(
              text,
              style: TextStyle(color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
