import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LakePage(),
    );
  }
}


class LakePage extends StatefulWidget {
  const LakePage({super.key});

  @override
  State<LakePage> createState() => _LakePageState();
}


class _LakePageState extends State<LakePage> {

  bool favorite = false;
  int favoriteCount = 41;


  void changeFavorite(){

    setState(() {

      if(favorite){
        favoriteCount--;
        favorite = false;
      }
      else{
        favoriteCount++;
        favorite = true;
      }

    });

  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "Flutter layout demo",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),


      body: Column(

        children: [


          Image.network(
            "https://picsum.photos/800/400",
            height: 250,
            width: double.infinity,
            fit: BoxFit.cover,
          ),



          Padding(
            padding: const EdgeInsets.all(20),

            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [


                const Column(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(
                      "Oeschinen Lake Campground",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                      ),
                    ),


                    Text(
                      "Kandersteg, Switzerland",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )

                  ],
                ),



                Row(

                  children: [

                    IconButton(

                      onPressed: changeFavorite,

                      icon: Icon(
                        favorite
                        ? Icons.favorite
                        : Icons.favorite_border,

                        color: Colors.red,
                      ),

                    ),


                    Text(
                      "$favoriteCount"
                    )

                  ],
                )


              ],
            ),
          ),





          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [


              Column(
                children: [
                  Icon(Icons.call, color: Colors.deepPurple),
                  Text("CALL")
                ],
              ),



              Column(
                children: [
                  Icon(Icons.navigation, color: Colors.deepPurple),
                  Text("ROUTE")
                ],
              ),



              Column(
                children: [
                  Icon(Icons.share, color: Colors.deepPurple),
                  Text("SHARE")
                ],
              ),


            ],
          ),




          const Padding(

            padding: EdgeInsets.all(20),

            child: Text(

              "Lake Oeschinen lies at the foot of the Blüemlisalp "
              "in the Swiss Alps. Situated 1,578 meters above sea "
              "level, it is one of the largest alpine lakes in Switzerland. "
              "A gondola ride from Kandersteg, followed by a half-hour walk "
              "through pastures and forest, leads you to the lake.",


              style: TextStyle(
                fontSize: 14,
              ),

            ),
          )

        ],

      ),

    );

  }

}