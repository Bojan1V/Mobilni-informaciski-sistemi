import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/list_item.dart';
import 'package:flutter_application_1/screens/main_screen.dart';
import 'package:flutter_application_1/widgets/nov_element.dart';
import './pizza_question.dart';
import './pizza_answer.dart';
import 'package:flutter_application_1/screens/list_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (ctx) => MainScreen(title: 'List Example'),
        ListDetailScreen.routeName: (ctx) => ListDetailScreen(),
      },
    );
  }
}
