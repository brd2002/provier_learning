// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:pdf_reader_app/counter_provider.dart';
import 'package:pdf_reader_app/thirdpage.dart';
import 'package:provider/provider.dart';

class SecondPage extends StatefulWidget {
  final int number;
  const SecondPage({
    Key? key,
    required this.number,
  }) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, CounterProvider, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // increment();
            CounterProvider.increment();
          },
          child: Center(
            child: Icon(Icons.add),
          ),
        ),
        appBar: AppBar(
          title: Text("page2"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                CounterProvider.number.toString(),
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    CounterProvider.decrement();
                  },
                  child: Text("decrement")),
              ElevatedButton(
                  onPressed: () {
                    CounterProvider.reset();
                  },
                  child: Text("reset the number in zero")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ThirdPage(number: CounterProvider.number,)));
                  },
                  child: Text("move to third page"))
            ],
          ),
        ),
      ),
    );
  }
}
