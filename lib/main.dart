import 'package:flutter/material.dart';
import 'package:pdf_reader_app/colors.dart';
import 'package:pdf_reader_app/counter_provider.dart';
import 'package:pdf_reader_app/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CounterProvider>(create: (context) => CounterProvider())
      ],
      child: MaterialApp(
        theme: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(AppColors.primaryColor),
            )
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: AppColors.primaryColor,
          ),
          appBarTheme: AppBarTheme(
            backgroundColor: AppColors.primaryColor,
          ),
        ),
        home: HomePage(),
      ),
    );
  }
}

