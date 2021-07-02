import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rating_bar/rating_bar.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final List images = [
    [
      "https://images.unsplash.com/photo-1574920162043-b872873f19c8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=893&q=80",
      "iPods"
    ],
    [
      "https://images.unsplash.com/photo-1574678720393-99c517a4cc75?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=891&q=80",
      "iPhone"
    ],
    [
      "https://images.unsplash.com/photo-1580943943004-6a4697b70059?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
      "Apple Watch"
    ],
    [
      "https://images.unsplash.com/photo-1517663404855-6f96c7aa20e2?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bWFjYm9va3xlbnwwfDB8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "Macbook"
    ],
    [
      "https://images.unsplash.com/photo-1572569979132-b4f10c9ec185?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTZ8fGdhZGdldHN8ZW58MHwwfDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
      "Earphone"
    ],
    [
      "https://images.unsplash.com/photo-1620360642570-72f7b6a09e01?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTd8fGdhZGdldHN8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "Headphone"
    ],
    [
      "https://images.unsplash.com/photo-1593305841991-05c297ba4575?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2FtaW5nJTIwc2V0dXB8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "Gaming Setup"
    ],
    [
      "https://images.unsplash.com/photo-1614696131965-cc559b1ecad1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGVkJTIwdHZ8ZW58MHwwfDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
      "ULTRA 4K LED"
    ],
  ];
  List<dynamic> lst = [
    ["Electronic", Icons.flash_on_outlined, "5  items"],
    ["Clothes", Icons.login, "5  items"],
    ["Appliances", Icons.psychology_rounded, "5  items"],
    ["House Holds", Icons.house, "5  items"],
    ["Others", Icons.settings_ethernet_sharp, "5  items"],
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: ListView(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                title: Text(
                  "Items",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  "View More",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 300.0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    viewportFraction: 0.8,
                  ),
                  items: images.map((i) {
                    return Builder(builder: (BuildContext context) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                                width: MediaQuery.of(context).size.width,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(25.0),
                                    child: FittedBox(
                                      child: CachedNetworkImage(
                                        maxHeightDiskCache: 200,
                                        maxWidthDiskCache: 200,
                                        imageUrl: i[0],
                                      ),
                                    ))),
                          ),
                          ListTile(
                            title: Text(
                              i[1],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              children: [
                                RatingBar.readOnly(
                                  initialRating: 4.5,
                                  isHalfAllowed: true,
                                  halfFilledIcon: Icons.star_half,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                  filledColor: Colors.amber,
                                  halfFilledColor: Colors.amberAccent,
                                  emptyColor: Colors.transparent,
                                  size: 18.0,
                                ),
                                SizedBox(
                                  width: 5.0,
                                ),
                                Center(child: Text("4.5 (23 Reviews)")),
                              ],
                            ),
                          )
                        ],
                      );
                    });
                  }).toList(),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 80,
                width: 300,
                child: Container(
                  margin: EdgeInsets.only(left: 15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Text(
                          'Headline',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: lst.length,
                            itemBuilder: (BuildContext context, index) =>
                                Container(
                              margin: EdgeInsets.only(right: 15.0),
                              padding: EdgeInsets.only(right: 50.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 3,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Icon(
                                    lst[index][1],
                                    size: 40.0,
                                    color: Colors.purple,
                                  ),
                                  SizedBox(
                                    width: 5.0,
                                  ),
                                  Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '${lst[index][0]}',
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          '${lst[index][2]}',
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                      ]),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              ListTile(
                title: Text(
                  "Popular Items",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: Text(
                  "View More",
                  style: TextStyle(color: Colors.purple),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 5.0,
                crossAxisCount: 2,
                children: List.generate(images.length, (index) {
                  return Container(
                    margin: EdgeInsets.only(left: 10.0),
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: CachedNetworkImage(
                                maxHeightDiskCache: 200,
                                maxWidthDiskCache: 200,
                                imageUrl: images[index][0],
                              ),
                            ),
                          ),
                          ListTile(
                            title: Text(
                              images[index][1],
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Row(
                              children: [
                                RatingBar.readOnly(
                                  initialRating: 4.5,
                                  isHalfAllowed: true,
                                  halfFilledIcon: Icons.star_half,
                                  filledIcon: Icons.star,
                                  emptyIcon: Icons.star_border,
                                  filledColor: Colors.amber,
                                  halfFilledColor: Colors.amberAccent,
                                  emptyColor: Colors.transparent,
                                  size: 11.0,
                                ),
                                SizedBox(
                                  width: 2.0,
                                ),
                                Center(
                                  child: Text("4.5 (23 Reviews)",
                                      style: TextStyle(fontSize: 10.0)),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ],
          ),
        ),
        BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.red,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.school),
              label: 'School',
              backgroundColor: Colors.purple,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.pink,
            ),
          ],
        ),
      ],
    );
  }
}
