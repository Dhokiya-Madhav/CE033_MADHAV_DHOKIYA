// For lab_9 tut 1

import 'package:flutter/material.dart';
import 'package:lab_8/quote.dart';

class QuoteCard extends StatelessWidget {
  //Use key in widget constructors

  final Quote quote;
  //Signature of callbacks that have no arguments and return no data.
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 30.0, 40.0, 10.0),
      shadowColor: Colors.red,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 17,
                color: Colors.red,
                fontFamily: "Poppins",
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              onPressed: delete,
              icon: Icon(Icons.delete),
              label: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
