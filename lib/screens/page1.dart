import 'package:flutter/material.dart';
import 'package:progress_form/widgets/textField.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          TProgress(
            hintText: "Nom",
            prefix: Icon(Icons.person),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Prenom",
            prefix: Icon(Icons.person),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Email",
            prefix: Icon(Icons.email),
          ),
        ],
      ),
    );
  }
}
