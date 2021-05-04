import 'package:flutter/material.dart';
import 'package:progress_form/widgets/textField.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 15),
      child: Column(
        children: [
          TProgress(
            hintText: "Adresse 1",
            prefix: Icon(Icons.location_city),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Ville",
            prefix: Icon(Icons.location_city),
          ),
          SizedBox(
            height: 15,
          ),
          TProgress(
            hintText: "Pays",
            prefix: Icon(Icons.local_airport),
          ),
        ],
      ),
    );
  }
}
