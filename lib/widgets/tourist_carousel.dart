import 'package:codecole/model/destination_model.dart';
import 'package:codecole/screen/destination_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:codecole/screen/destination_screen.dart';

class TouristCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Tourist Locations',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () => print('see all'),
                child: Text(
                  'see all',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF3EBACE),
                    fontSize: 16.0,
                    letterSpacing: 1.0,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 300.0,
//          color: Colors.blue,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: destinations.length,
              itemBuilder: (BuildContext context, int index) {
                Destination destination = destinations[index];
                return GestureDetector(
                  onTap: ()=> Navigator.push(context, MaterialPageRoute(builder: (_)=>DestinationScreen(
                    destination: destination,
                  ))),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 210.0,

                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 15.0,
                          child: Container(

                            height: 120.0,
                            width: 200.0,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(

                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    '${destination.activities.length} activities',
                                    style: TextStyle(
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.2,
                                    ),
                                  ),
                                  Text(
                                    destination.description,
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 180.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0)
                              ]),
                          child: Stack(
                            children: <Widget>[
                              Hero(
                                tag: destination.imageUrl,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image(
                                    height: 180.0,
                                    width: 180.0,
                                    image: AssetImage(destination.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 10.0,
                                bottom: 10.0,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[

                                  Text(destination.city, style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.w600, letterSpacing: 1.2),),
                                  Row(
                                    children: <Widget>[
                                      Icon(FontAwesomeIcons.locationArrow,size: 10.0, color: Colors.white,),
                                      Text(destination.country,style: TextStyle(color: Colors.white)),
                                    ],
                                  ),
                                ],),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}