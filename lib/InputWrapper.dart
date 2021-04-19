import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_app/constants.dart';


import 'InputField.dart';
import 'home_page.dart';

class InputWrapper extends StatelessWidget {

  static bool validator=false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: InputField(),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Forgot Password?',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed))
                      return Colors.green;
                    return gradientStartColor; // Use the component's default.
                  },
                ),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                  validator=true;
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
              }), //Button(),
        ],
      ),
    );
  }
}
