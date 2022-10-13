import 'package:flutter/material.dart';


class ComingSoon extends StatelessWidget {
  var listMovie=[
    {
      'name':'Avatar: The Way of Water',
      'img':'assets/images/avatar.png',
      'date':'DATE:- 16/12/2022'
    },
    {
      'name':'Black Panther:\n Wakanda Forever',
      'img':'assets/images/black_panther.png',
      'date':'DATE:- 11/11/2022'
    },
    {
      'name':'Shazam! Fury of the Gods',
      'img':'assets/images/shazam.png',
      'date':'DATE:- 21/12/2022'
    },
    {
      'name':'Scream',
      'img':'assets/images/scream.png',
      'date':'DATE:- 25/10/2022'
    },
    {
      'name':'Beast',
      'img':'assets/images/beast.png',
      'date':'DATE:- 16/08/2022'
    },
    {
      'name':'Samaritan',
      'img':'assets/images/samaritan.png',
      'date':'DATE:- 26/08/2022'
    },


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Coming Soon'),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
                height:150,
                width: double.infinity,
            child: Container(
                //width: 100,
                height: 100,
                color: Colors.orangeAccent,
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
                          SizedBox(height: 20,),
                          Text(listMovie[index]['date']!,style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black
                          ),)
                        ],
                      )
                    ],
                  ),
                )
              ),
          )
        );

      },itemCount: listMovie.length,
      )
      // Padding(
      //   padding: const EdgeInsetsDirectional.only(top: 100),
      //   child: Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       //Text(),
      //       ElevatedButton(
      //         onPressed: () {
      //           Navigator.pop(context);
      //         },
      //         child: null,
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}