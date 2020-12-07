import 'package:city_apartments/apartment_details.dart';
import 'package:city_apartments/models/apartment_model.dart';
import 'package:city_apartments/widgets/facility_tag.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Apartment> apartments = [
    Apartment(
      id: 0,
      name: 'Loveren Apartment',
      apartmentType: 'Self Contain',
      image: 'assets/images/apartment_one.jpg',
      description:
          'This is a selfContained house having a bathroom, kitchen and a spacious room for both TVs, cushions and a bed',
      facilities: ['Tv', 'Hot tub', 'solar'],
      price: 100,
    ),
    Apartment(
      id: 1,
      name: 'Statham Apartment',
      apartmentType: 'One Bedroom',
      image: 'assets/images/apartment_two.jpg',
      description:
          'This is a selfContained house having a bathroom, kitchen and a spacious room for both TVs, cushions and a bed',
      facilities: ['Tv', 'Hot tub', 'solar', 'air conditioning'],
      price: 100,
    ),
    Apartment(
      id: 2,
      name: 'Jason Arena',
      apartmentType: 'Two bedroom',
      image: 'assets/images/apartment_three.jpg',
      description:
          'This is a selfContained house having a bathroom, kitchen and a spacious room for both TVs, cushions and a bed',
      facilities: ['Tv', 'Movie-house', 'solar'],
      price: 100,
    ),
    Apartment(
      id: 3,
      name: 'Loveren Apartment',
      apartmentType: 'Self Contain',
      image: 'assets/images/apartment_one.jpg',
      description:
          'This is a selfContained house having a bathroom, kitchen and a spacious room for both TVs, cushions and a bed',
      facilities: ['Wi-Fi', 'Hot tub', 'solar'],
      price: 100,
    ),
  ];

  // String apartmentImage = 'assets/images/apartment_two.jpg';
  // String apartmentName = 'Lovren House';
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
              Container(
                height: MediaQuery.of(context).size.height * .75,
                child: ListView.builder(
                  itemCount: apartments.length,
                  itemBuilder: (context, index) => apartmentCard(
                      context: context,
                      apartmentName: apartments[index].name,
                      apartmentImage: apartments[index].image,
                      apartmentPrice: apartments[index].price,
                      apartmentType: apartments[index].apartmentType,
                      apartmentFacilities: [
                        FacilitiesTag(
                          facility: apartments[index].facilities,
                        )
                      ]),
                ),
              ),

              // apartmentCard(context),
              // apartmentCard(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget apartmentCard(
          {BuildContext context,
          double apartmentPrice,
          String apartmentType,
          String apartmentImage,
          String apartmentName,
          String apartmentDescription,
          List<Widget> apartmentFacilities}) =>
      Container(
        //height: 300,
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
                                text: '\$$apartmentPrice/'.toString(),
                                style: TextStyle(fontSize: 16)),
                            TextSpan(
                                text: 'month', style: TextStyle(fontSize: 14))
                          ]),
                    ),
                    Text(apartmentType,
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
                    ...apartmentFacilities
                  ],
                ),
              ),
            ),
          ],
        ),
      );
}
