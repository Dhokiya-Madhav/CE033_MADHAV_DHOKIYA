//Working with custom class and Lab _9 tut 1
import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: EchoList(),
    ));

class EchoList extends StatefulWidget {
  const EchoList({Key? key}) : super(key: key);
  @override
  State<EchoList> createState() => _EchoListState();
}

class _EchoListState extends State<EchoList> {
  //An indexable collection of objects with a length.
  List<Quote> quotes = [
    Quote(text: 'All we have is now', author: 'Madhav'),
    Quote(text: 'Dont wish for it work for it', author: "Madhav"),
    Quote(
        text: 'A journey of a thousand miles begins with a single step',
        author: "Madhav"),
  ];

  /*
  Widget quoteTemplate(quote) {
    ///The functionality of this widget on screen is, that it is a bland space or panel with
    ///round corners and a slight elevation on the lower side.
    return QuoteCard(quote: quote);
  }
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text('Quotes'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        ///A map is a collection of key/value pairs. The value is retrieved from a map with
        ///its associated key.
        children: quotes
            .map((quote) => QuoteCard(
                  quote: quote,
                  delete: () {
                    //Notify the framework that the internal state of this object has changed.
                    setState(() {
                      //Removes the first occurrence of [value] from this list.
                      quotes.remove(quote);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}



