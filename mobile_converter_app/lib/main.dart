import 'package:flutter/material.dart';

import 'main/home_page.dart';
import 'main/start_page.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => const MainScreen(),
        '/home': (BuildContext context) => const HomePage()
      }
  ));
}
