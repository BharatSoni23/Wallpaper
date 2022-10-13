import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lisview/bollywood.dart';
import 'package:lisview/coming_soon.dart';
import 'package:lisview/hollywood.dart';
import 'package:lisview/series.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MOVIES CENTER',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => Splashscreen();
}

class Splashscreen extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
              child: Image.asset('assets/images/movies.png'),
              color: Colors.tealAccent,
            ),

          Text('UNIVERSAL MOVIES'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  var arrContent = [
    {
      'name': 'UP-COMING',
      'img': "assets/images/comings.png",
      //'button':"ComingSoon",
      'bgcolor': '0',
      'button': '0'
    },
    {
      "name": "HOLLYWOOD",
      'img': "assets/images/holllywood.png",
      'bgcolor': '1',
      'button': '1'
    },
    {
      "name": "BOLLYWOOD",
      'img': "assets/images/bwd1.png",
      'bgcolor': '2',
      'button': '2'
    },
    {
      "name": "WEBSERIES",
      'img': "assets/images/web_series.png",
      'bgcolor': '3',
      'button': '4'
    }
  ];

  var arrColors = [
    Colors.orangeAccent,
    Colors.purple,
    Colors.tealAccent,
    Colors.brown,
    Colors.orangeAccent,
    Colors.lightBlue,
    Colors.deepPurple,
    Colors.limeAccent,
    Colors.deepPurple,
    Colors.pinkAccent,
    Colors.orange,
    Colors.purple,
    Colors.lightGreenAccent,
  ];

  // var button =[
  //   {
  //     ElevatedButton(onPressed: () {
  //       Navigator.push(
  //           context, MaterialPageRoute(builder: (context) => ComingSoon()));
  //     }, child: Text('go'))
  //   }
  //  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: const Text('MOVIES CENTER')),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsetsDirectional.all(8.0),
                child: SizedBox(

                  height: 150,
                  child: Container(

                    height: 100,
                    decoration: BoxDecoration(
                        color:
                            arrColors[int.parse(arrContent[index]['bgcolor']!)],
                        borderRadius: BorderRadius.circular(11.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Row(
                        children: [
                          Image.asset(
                            arrContent[index]['img']!,
                            width: 120,

                          ),
                          const SizedBox(width: 15),
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                if(index==0)
                                  {
                                    return ComingSoon();
                                  }
                                else if(index==1)
                                  {
                                    return HollyWood();
                                  }
                                else if(index==2)
                                  {
                                    return Bollywood();
                                  }
                                else if(index==3)
                                  {
                                    return series();
                                  }
                                else
                                  return Text('No Content Available');
                              }
                              )
                              );
                            },
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  arrContent[index]['name']!,
                                  style: TextStyle(
                                      fontSize: 19,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent),
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
          itemCount: arrContent.length,
        )
    );
  }
}
