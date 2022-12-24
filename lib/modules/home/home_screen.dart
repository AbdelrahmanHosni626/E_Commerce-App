import 'package:flutter/material.dart';

import '../../shared/components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: backButton(context),
      ),
      body: const Center(
        child: Text('Home'),
      ),
    );
  }
}
