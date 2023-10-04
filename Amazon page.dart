import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class amazon extends StatefulWidget {
  const amazon({super.key});

  @override
  State<amazon> createState() => _amazonState();
}
class _amazonState extends State<amazon> {
  List items=[
    "assets/accessories.jpg",
    "assets/bandwatch.jpg",
    "assets/mobile.jpg",
    "assets/TV.jpg",

  ];
  List a=[
    "Mobiles",
    "Electronics",
    "Prime",
    "fashion"
  ];
  List b=[
    "16% off Deal",
    "47% off Deal",
    "15% off Deal",
    "10% off Deal"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
       flexibleSpace: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(
             begin: Alignment.topLeft,
             end: Alignment.bottomRight,
             colors: [Color(0xff84d8e3), Color(0xffa5e6ce)],

           ),
         ),

         ),
        title: Container(
             height: 40,
             width: 360,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               border: Border.all(color: Colors.white10),
               color: Colors.white,
             ),
          child:TextFormField(
            decoration: InputDecoration(
            border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
            labelText: "Search Amazon.ca",
            suffixIcon: Icon(Icons.photo_camera_outlined),
          ),
          ),
        ),

     ),
  body:
  SingleChildScrollView(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xffb8e9ee), Color(0xffc8f1e3)],

            ),
          ),
          child: Row(
            children: [
              Icon(Icons.location_on_sharp),
              Text("Delivery to........")
            ],
          ),
        ),
          Container(
              height: 150,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage(items[index]),fit: BoxFit.fill)
                            ),
                           ),
                        Text(a[index]),
                      ],
                    ),
                  );
                },)
              ),
          Container(
                color: Colors.white,
                child: CarouselSlider.builder(

                    options: CarouselOptions(
                      height: 300,
                      //aspectRatio: 8/9,
                      viewportFraction: 1,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 2),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      // onPageChanged: callbackFunction,
                      scrollDirection: Axis.horizontal,
                    ),

                    itemCount: items.length,
                    itemBuilder: (BuildContext context, int index, int pageViewIndex)
                    {
                      return
//194201000023492
                        Container(
                          height: 100,
                          width: double.infinity,
                          //color: Colors.cyanAccent,
                          decoration: BoxDecoration(

                              image: DecorationImage(image: AssetImage(items[index]),fit: BoxFit.fill)),
                          // child: Text(b[index]),
                        );

                    }

                ),
              ),
        Container(
            height: 150,
            width: double.infinity,
            child: ListView.builder(
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(a[index]),
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(items[index]),fit: BoxFit.fill)
                        ),
                      ),

                    ],
                  ),
                );
              },)
        ),
        Divider(
          thickness: 5,
          color:Colors.grey,
        ),
        Container(
          height: 380,
          width: double.infinity,
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 1),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      width: 300,
                      decoration: BoxDecoration(image: DecorationImage(image: AssetImage(items[index]), fit: BoxFit.fill)),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        // Container(
        //   height: 300,
        //   width: 400,
        //   child: GridView.count(crossAxisCount: 2,
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           decoration:BoxDecoration(
        //               image: DecorationImage(image: AssetImage("assets/image1.jpg")),
        //               ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           decoration:BoxDecoration(
        //               image: DecorationImage(image: AssetImage("assets/image1.jpg")),
        //               ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //
        //           decoration:BoxDecoration(
        //               image: DecorationImage(image: AssetImage("assets/image1.jpg")),
        //           ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.all(8.0),
        //         child: Container(
        //           decoration:BoxDecoration(
        //               image: DecorationImage(image: AssetImage("assets/image1.jpg")),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
        Divider(
          thickness: 5,
          color:Colors.grey,
        ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Deal of the Day", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        Container(
          height: 400,
          width: double.infinity,
          child: GridView.builder(
            itemCount: items.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 16 ),
            itemBuilder: (BuildContext context, int index) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(items[index]),fit: BoxFit.fill)),

                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(b[index], style: TextStyle(backgroundColor: Colors.red)),
                  ),
                ],
              );
            },
          ),
        ),


          ],
        ),
  )


    );
  }
}
