import 'package:flutter/material.dart';

import 'components/body.dart';

class MainWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Utama"),
      ),
      body: Body(),
    );
  }
}
