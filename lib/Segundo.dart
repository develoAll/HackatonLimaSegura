import 'package:flutter/material.dart';

class Segundo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: MaterialButton(
          child: Text("ATRAS"),
          color: Colors.red,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
