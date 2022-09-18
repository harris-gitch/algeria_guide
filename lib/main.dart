import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:task2camp/cityscreen.dart';

import 'dataModel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'Flutter Demo',
      theme: ThemeData(

      primaryColorLight: Color(0xffB63831)
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var backgroundColor = Colors.grey[300];
  var defaultColor = Color(0xff3F3DBF);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
     appBar: AppBar(
       backgroundColor: defaultColor,
        toolbarHeight:MediaQuery.of(context).size.height/10,
        title: Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Text('Algeria Guid',style: TextStyle(fontWeight: FontWeight.bold),),
        ),
       shape: RoundedRectangleBorder(
         borderRadius: BorderRadius.vertical(
           bottom: Radius.circular(30),
         ),
       ),
       actions: [
         Padding(
           padding: const EdgeInsets.all(8.0),
           child: IconButton(onPressed:(){}, icon: Icon(Icons.search_outlined,size: 24,),),
         )
       ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          CarouselSlider(items:
              List.generate(datalist.length, (index) => Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.grey[200],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16.0),
                    child: Image(
                      image: NetworkImage(datalist[index].cityImage),
                      width: double.infinity,
                      fit: BoxFit.cover,

                    ),
                  ),
                ),
              )),
              options: CarouselOptions(
                  height: 250,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  viewportFraction: 0.9,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 4),
                  autoPlayAnimationDuration: Duration(seconds: 1),
                  autoPlayCurve: Curves.linear,
                  scrollDirection: Axis.horizontal

              )),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Container(
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                color: defaultColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text('Hotels',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
              ),),
            Container(
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text('places',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
              ),),
            Container(
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                  color: defaultColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(child: Text('Attraction',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w400,fontSize: 20),)),
              ),),
          ],),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Popular Destinations' ,style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1/ 1.4,
              children: List.generate(datalist.length,
                      (index) =>GestureDetector(
                        onTap: (){
                     navigateTo(context, CityScreen(item: datalist[index]));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(13),
                            color: Colors.grey[50],),
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Hero(
                                 // transitionOnUserGestures: true,
                                  tag: datalist[index].cityName.toString(),
                                  child: Image(
                                    image: NetworkImage(datalist[index].cityImage),
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                  ),
                                ),

                              ),
                              Container(
                                height: 50,
                                width: double.infinity,
                                alignment: Alignment.bottomCenter,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(13),
                                      bottomRight: Radius.circular(13)
                                  ),
                                  child: BackdropFilter(
                                    filter: ImageFilter.blur(sigmaX: 10,sigmaY: 10),
                                    child: Container(

                                      color: Colors.transparent,
                                      child: Center(child: Text(datalist[index].cityName,style: TextStyle(color: Colors.white),)),
                                    ),
                                  ),
                                ),
                              ),

                            ],

                          ),
                        ),
                      ) ))
              ,
            ),

        ],),
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
void navigateTo(context, Widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Widget,
  ),
);