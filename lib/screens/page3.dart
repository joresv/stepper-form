import 'package:flutter/material.dart';
import 'package:progress_form/widgets/textField.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          TProgress(
            hintText: "Proféssion",
            prefix: Icon(Icons.work),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Années d'expériances",
            prefix: Icon(Icons.calendar_today),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Dernier diplôme",
            prefix: Icon(Icons.style_rounded),
          ),
        ],
      ),
    );
  }
}
