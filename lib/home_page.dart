import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Find your flat',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset("assets/images/search.png")),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 20,
                                width: 20,
                                child: Image.asset("assets/images/filter.png")),
                          ],
                        )
                      ],
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '55 results in your area',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              apartmentCard(context),
              apartmentCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget apartmentCard(BuildContext context) => Container(
        height: MediaQuery.of(context).size.height * .40,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 25,
                    right: 11,
                  ),
                  width: MediaQuery.of(context).size.width * 1,
                  height: MediaQuery.of(context).size.height * .25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        spreadRadius: 10,
                        blurRadius: 7,

                        offset: Offset(5, 5), // changes position of shadow
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: EdgeInsets.only(left: 35, right: 25),
                width: MediaQuery.of(context).size.width * .55,
                height: MediaQuery.of(context).size.height * .35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      spreadRadius: 10,
                      blurRadius: 7,

                      offset: Offset(5, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'assets/images/apartment_two.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: EdgeInsets.only(left: 25),
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width * .40,
                height: MediaQuery.of(context).size.height * .30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.black),
                          children: <TextSpan>[
                            TextSpan(
                                text: '\$900/', style: TextStyle(fontSize: 16)),
                            TextSpan(
                                text: 'month', style: TextStyle(fontSize: 14))
                          ]),
                    ),
                    Text('Double family house',
                        style: TextStyle(fontSize: 12, color: Colors.grey)),
                    Row(
                      children: <Widget>[
                        //TODO add a read only rating box as the first child,
                        Text(
                          '147 reviews',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 10),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.grey[400],
                          child: Text(
                            '+55',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 8),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          radius: 15,
                          child: Text(
                            '+55',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 8),
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.grey[400],
                          radius: 15,
                          child: Text(
                            '+55',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 8),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    ),
                    Wrap(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[800]),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Air conditioning',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[800]),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'Wi-Fi',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5, right: 5),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.blue[800]),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              'TV-LED',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
