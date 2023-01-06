import 'package:flutter/material.dart';

import 'ChateScreen.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Chate Aps"),
      ),
      body:ChateScreen(),
    );
  }
}
