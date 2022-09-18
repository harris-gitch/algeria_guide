

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:task2camp/dataModel.dart';
import 'package:url_launcher/link.dart';

class CityScreen extends StatelessWidget {
  final Data item;

  const CityScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    var backgroundColor = Colors.grey[300];
    var defaultColor = Color(0xff3F3DBF);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: defaultColor,
        title: Text('Details'),
      ),
      body: Column(

        mainAxisSize: MainAxisSize.min,
        children: [

          Hero(
            transitionOnUserGestures: true,
            tag: item.cityName.toString(),
            child: Image(
              image: NetworkImage(item.cityImage),
              width: double.infinity,
              fit: BoxFit.cover,
            height: 250,
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text(item.cityName,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600),),
            RatingBar.builder(
              itemSize: 20,
            initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
    itemBuilder: (context, _) => Icon(
    Icons.star,
    color: Colors.amber,
    ),
    onRatingUpdate: (rating) {
    print(rating);
    },
    ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 300
            ),
            child: Text('Info :',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.grey)),

          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(item.cityInfo,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24),),
          ),
        Padding(
          padding: const EdgeInsets.only(left: 300,top: 100),
          child: Link(
            target: LinkTarget.self,
              uri: Uri.parse(item.link),
              builder: (context,followlink)=>FloatingActionButton(
                  backgroundColor: defaultColor,
                  onPressed: followlink, child: Icon(Icons.map_outlined))),
        ),

        ],
      ),
    );
  }
}
