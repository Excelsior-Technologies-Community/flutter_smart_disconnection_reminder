import 'package:flutter/material.dart';
import 'package:flutter_smart_disconnection_reminder/src/inactivity_tracker.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Disconnection Reminder',
      home: NetworkWrapper(child: const HomePage()),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('App Content Here', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
