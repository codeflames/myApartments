import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:slider_button/slider_button.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ApartmentDetails extends StatelessWidget {
  final String image;
  final String name;

  const ApartmentDetails({Key key, this.image, this.name}) : super(key: key);

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
                child: ImageSlideshow(
                  initialPage: 0,
                  onPageChanged: (value) {},
                  indicatorColor: Colors.grey,
                  children: [
                    Hero(
                      tag: Text('first'),
                      child: Image.asset(image, fit: BoxFit.cover),
                    ),
                    Image.asset('assets/images/apartment_three.jpg',
                        fit: BoxFit.cover),
                    Image.asset('assets/images/apartment_one.jpg',
                        fit: BoxFit.cover),
                  ],
                ),
              ),
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
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
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
                      SliderButton(
                        action: () {},
                        label: Text(
                          'Slide to Book',
                        ),
                        dismissible: false,
                        backgroundColor: Colors.blue[700],
                        icon: Icon(Icons.navigate_next),
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
                  backgroundColor: Colors.grey[100],
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
