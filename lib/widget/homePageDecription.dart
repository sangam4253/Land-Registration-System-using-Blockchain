import 'package:flutter/material.dart';

class LeftDescription extends StatelessWidget {
  const LeftDescription({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        // title
        FittedBox(
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Land Registration Using Blockchain",
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Color(0xff28313b),
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal,
                //letterSpacing: 1.5,
              ),
            ),
          ),
        ),
        // Description
      ],
    );
  }
}
