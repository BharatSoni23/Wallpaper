import 'package:flutter/material.dart';


class series extends StatelessWidget {
  var listMovie=[
    {
      'name':'LUDO',
      'img':'assets/images/ludo.png',
      'bgcolor':'0',
    },
    {
      'name':'THE FAMILY MAN',
      'img':'assets/images/family_man.png',
      'bgcolor':'3',

    },
    {
      'name':'GULLAK',
      'img':'assets/images/GULLAK.png',
      'bgcolor':'4',

    },
    {
      'name':'AASHRAM',
      'img':'assets/images/AASHRAM.png',
      'bgcolor':'5',

    },
    {
      'name':'PANCHAYAT',
      'img':'assets/images/panchayat.png',
      'bgcolor':'7',

    },
    {
      'name':'Campus Diaries',
      'img':'assets/images/campus.png',
      'bgcolor':'2',
    },


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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WEBSERIES'),
        ),
        body: ListView.builder(itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 8,
              color: arrColors[int.parse(listMovie[index]['bgcolor']!)],
              shadowColor: Colors.purpleAccent,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
              child: SizedBox(
                height:150,
                width: double.infinity,

                child: Container(
                  //width: 100,
                    height: 150,
                  decoration: BoxDecoration(
                    //borderRadius: BorderRadius.circular(8),
                      //color: arrColors[int.parse(listMovie[index]['bgcolor']!)]
                  ),
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image.asset(listMovie[index]['img']!,width: 110,),

                          const SizedBox(width: 15,height: 15,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                listMovie[index]['name']!,style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.teal
                              ),
                              ),

                            ],
                          )
                        ],
                      ),
                    )
                ),
              ),
            ),
          );

        },itemCount: listMovie.length,

        )

    );
  }
}