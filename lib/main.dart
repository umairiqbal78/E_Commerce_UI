import 'package:flutter/material.dart';
import 'items.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(body: SingleChildScrollView(child: Column(
        children: [
          Items(),
        ],
      ))),
    ));
