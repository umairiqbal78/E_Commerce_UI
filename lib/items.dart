import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:rating_bar/rating_bar.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  final List images = [
    ["assets/earphone.jpeg", "Earphones"],
    ["assets/hp.jpg", "Hawlett Packet"],
    ["assets/laptop3.jpeg", "DELL Laptop"],
    ["assets/iphone.webp", "IPhone"],
    ["assets/laptop3.jpeg", "Lenovo Laptop"],
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
                  borderRadius: BorderRadius.circular(15.0),
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
                    // autoPlay: true,
                    viewportFraction: 1,
                  ),
                  items: images.map((i) {
                    return Builder(builder: (BuildContext context) {
                      return Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30.0),
                                  child:
                                      FittedBox(child: new Image.asset(i[0]))),
                            ),
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
                crossAxisSpacing: ,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
