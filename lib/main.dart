import 'package:flutter/material.dart';

import 'items.dart';
import 'providedstyle.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              "Ecom App UI",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications,
                  color: Colors.black,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: SingleChildScrollView(
              child: Column(
            children: [
              Items(),
              MyApp(),
            ],
          ))),
    ));
