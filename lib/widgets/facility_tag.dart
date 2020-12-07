import 'package:flutter/material.dart';

class FacilitiesTag extends StatelessWidget {
  final List<String> facility;
  const FacilitiesTag({
    Key key,
    this.facility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemCount: facility.length,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(top: 5, right: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue[800]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 8),
                  child: Text(
                    facility[index],
                    style: TextStyle(color: Colors.white, fontSize: 8),
                  ),
                ),
              )),
    );
  }
}
