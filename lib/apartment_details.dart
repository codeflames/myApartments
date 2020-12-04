import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:slide_to_act/slide_to_act.dart';

class ApartmentDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                  height: MediaQuery.of(context).size.height * .55,
                  child: Image.network(
                      'https://images.pexels.com/photos/1643383/pexels-photo-1643383.jpeg?cs=srgb&dl=pexels-vecislavas-popa-1643383.jpg&fm=jpg',
                      fit: BoxFit.cover)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * .5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('name'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Living room'),
                              Text('80 sqft')
                            ],
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.w100),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Living room'),
                              Text('80 sqft')
                            ],
                          ),
                          Text(
                            '|',
                            style: TextStyle(
                                fontSize: 45, fontWeight: FontWeight.w100),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Living room'),
                              Text('80 sqft')
                            ],
                          )
                        ],
                      ),
                      ReadMoreText(
                        'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                        trimLines: 2,
                        colorClickableText: Colors.blue[700],
                        trimMode: TrimMode.Line,
                        trimCollapsedText: '\nRead more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SlideAction(
                        child: Text('slide to book'),
                        onSubmit: () {},
                        sliderButtonIcon: Icon(Icons.navigate_next),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.amber,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
