import 'package:flutter/material.dart';

class InputField extends StatelessWidget {

  static bool validator_email=false;
  static bool validator_password=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
              ),
            ),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey[200],
              ),
            ),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your password",
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
              border: InputBorder.none,
            ),

          ),
        ),
      ],
    );
  }
}
