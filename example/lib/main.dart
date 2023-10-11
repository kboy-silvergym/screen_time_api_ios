import 'package:flutter/material.dart';
import 'package:screen_time_api_ios/screen_time_api_ios.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _screenTimeApiIosPlugin = ScreenTimeApiIos();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _screenTimeApiIosPlugin.selectAppsToDiscourage();
                },
                child: const Text("selectAppsToDiscourage"),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _screenTimeApiIosPlugin.encourageAll();
                },
                child: const Text("encourageAll"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
