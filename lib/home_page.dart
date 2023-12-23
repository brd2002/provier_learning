import 'package:flutter/material.dart';
import 'package:pdf_reader_app/counter_provider.dart';
import 'package:pdf_reader_app/secondary.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // int number = 0;

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
          title: Text("page1"),
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
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SecondPage(number: CounterProvider.number)));
                  },
                  child: Text("second page"))
            ],
          ),
        ),
      ),
    );
  }
}
