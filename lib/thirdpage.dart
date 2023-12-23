import 'package:flutter/material.dart';
import 'package:pdf_reader_app/counter_provider.dart';
import 'package:provider/provider.dart';

class ThirdPage extends StatefulWidget {
  final int number;
  const ThirdPage({super.key, required this.number});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, CounterProvider, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            CounterProvider.increment();
          },
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text("third page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text(
              CounterProvider.number.toString(),
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                fontSize: 60,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
