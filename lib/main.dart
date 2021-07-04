import 'package:flutter/material.dart';

import 'items.dart';

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
            ],
          )),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.purple,
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
              shape: CircularNotchedRectangle(),
              notchMargin: 5,
              child: Container(
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            onPressed: () {},
                            minWidth: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.home,
                                  color: Colors.purple,
                                  size: 30.0,
                                ),
                              ],
                            )),
                        MaterialButton(
                            onPressed: () {},
                            minWidth: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.favorite,
                                  color: Colors.grey,
                                  size: 30.0,
                                ),
                              ],
                            )),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                            onPressed: () {},
                            minWidth: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add_shopping_cart,
                                  color: Colors.grey,
                                  size: 30.0,
                                ),
                              ],
                            )),
                        MaterialButton(
                            onPressed: () {},
                            minWidth: 60,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                  size: 30.0,
                                ),
                              ],
                            )),
                      ],
                    )
                  ],
                ),
              ))),
    ));
