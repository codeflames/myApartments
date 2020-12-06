import 'package:city_apartments/apartment_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String apartmentImage = 'assets/images/apartment_two.jpg';
  String apartmentName = 'Lovren House';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.blue[800],
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('')),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat_bubble), title: Text('')),
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('')),
        ],
      ),
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
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
//                        width: double.infinity,
                        child: Hero(
                          tag: Text('first'),
                          child: Image.asset(
                            apartmentImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.all(15),
                          width: 100,
                          child: Text(apartmentName,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                            padding: EdgeInsets.only(bottom: 15, left: 15),
                            width: 100,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              child: IconButton(
                                icon: Icon(
                                  Icons.navigate_next,
                                  color: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => ApartmentDetails(
                                            image: apartmentImage,
                                            name: apartmentName,
                                          )));
                                },
                              ),
                            )),
                      )
                    ],
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RatingBar.builder(
                          initialRating: 4,
                          itemSize: 10,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          //itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
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
                        FacilitiesTag(
                          facility: 'Air conditioning',
                        ),
                        FacilitiesTag(
                          facility: 'Wi-Fi',
                        ),
                        FacilitiesTag(
                          facility: 'TV-LED',
                        )
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

class FacilitiesTag extends StatelessWidget {
  final String facility;
  const FacilitiesTag({
    Key key,
    this.facility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5, right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.blue[800]),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
        child: Text(
          facility,
          style: TextStyle(color: Colors.white, fontSize: 8),
        ),
      ),
    );
  }
}
