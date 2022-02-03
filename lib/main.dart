import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const questions = [
      'What\'s your favorite color?',
      'What\'s my favorite movie?'
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'this is header',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: const <Widget>[
          Text('여기 사람있어요!!'),
          RaisedButton(
            onPressed: null,
            child: Text('Answer 1'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('Answer 2'),
          ),
          RaisedButton(
            onPressed: null,
            child: Text('Answer 3'),
          ),
        ],
      ),
    );
  }
}
