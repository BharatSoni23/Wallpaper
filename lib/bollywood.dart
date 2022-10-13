import 'package:flutter/material.dart';

class Bollywood extends StatelessWidget{
  var arrBcontant = [
    {
      'name': 'ACTION',
      'img': "assets/images/action1.png",
      'bgcolor': '0',
      'bgcolor1':'2'
    },
    {
      'name': 'COMEDY',
      'img': 'assets/images/com.png',
      'bgcolor': '1',
      'bgcolor1':'4'
    },
    {
      'name': 'SCIENCE FICTION',
      'img': 'assets/images/sci3.png',
      'bgcolor': '2',
      'bgcolor1':'6'
    },
    {
      'name': 'ADVENTURE',
      'img': 'assets/images/advv.png',
      'bgcolor': '3',
      'bgcolor1':'5'
    },
    {
      'name': 'HORROR',
      'img': 'assets/images/horror.png',
      'bgcolor': '4',
      'bgcolor1':'3'
    },
    {
      'name': 'FANTASY',
      'img': 'assets/images/fantasy.png',
      'bgcolor': '5',
      'bgcolor1':'8'
    }
  ];
  var arrColor = [
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
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BOLLYWOOD'),
      ),
      body:
      ListView.builder(itemBuilder:  (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: SizedBox(
            height: 150,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: arrColor[int.parse(arrBcontant[index]['bgcolor']!)]
              ),
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        if (index == 0)
                          return Action();
                        else if(index==1)
                          return Comedy();
                        else if(index==2)
                          return Science_Fiction();
                        else if(index==3)
                          return Adventure();
                        else if(index==4)
                          return Horror();
                        else if(index==5)
                          return Fantasy();
                        else
                          return Text("nooo contant available");
                      },
                    ));
                  },
                  child: Row(
                    children: [
                      Image.asset(arrBcontant[index]['img']!),

                      Text(arrBcontant[index]['name']!,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: arrColor[int.parse(arrBcontant[index]['bgcolor1']!)]
                      ),),
                    ],
                    
                  ),
                ),

              ),

            ),
          ),

        );
      },itemCount: arrBcontant.length,
      ),
    );
  }
}

class Action extends StatelessWidget {
  var arrList = [
    {'name': 'Agneepath', 'img': 'assets/images/Agneepath.png'},
    {'name': 'Race', 'img': 'assets/images/race.png'},
    {'name': 'Bodyguard', 'img': 'assets/images/Bodyguard.png'},
    {'name': 'Singham', 'img': 'assets/images/sing1.png'},
    {'name': 'Sooryavanshi', 'img':'assets/images/sooryavanshi.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ACTION'),
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
                      color: Colors.tealAccent,

                      // color: arrColor[int.parse(
                      //     arrHcontant[index]['bgcolor']!)],
                      // borderRadius: BorderRadius.circular(11.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Image.asset(
                            arrList[index]['img']!,
                            width: 120,
                          ),
                          const SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                arrList[index]['name']!,
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.pinkAccent),
                              ),


                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('Back'))

                              //Text(arrContent[index]['name']!),
                              //     Text(arrContent[index]['number']!,style: TextStyle(
                              //       fontSize: 15,
                              //   fontWeight: FontWeight.bold
                              // ),
                              //     ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
          itemCount: arrList.length,
        ));
  }
}
class Agneepath extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Agneepath'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/agneepathp.jpg',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Karan Malhotra	\n WRITERS:Ila Bedi Dutta,\n  STARS: Hrithik Roshan Priyanka Chopra Jonas Sanjay Dutt \n\n\nAgneepath (transl. Path of Fire) is a 2012 Indian Hindi-language action drama film produced by Hiroo Yash Johar and Karan Johar under Dharma Productions and directed by Karan Malhotra in his directorial debut. A remake of the eponymous 1990 film directed by Mukul S. Anand and starring Amitabh Bachchan, it centers on a screenplay written by Malhotra and Ila Dutta Bedi, with dialogues written by Piyush Mishra. The film stars Hrithik Roshan, Sanjay Dutt, Rishi Kapoor, Priyanka Chopra, Kanika Tiwari, Om Puri and Zarina Wahab. It follows Vijay Deenanath Chauhan (Roshan), a common man from the island village of Mandwa who seeks revenge for his father's humiliation and murder at the hands of Kancha Cheena (Dutt); in the process, he befriends Rauf Lala (Kapoor), an underworld gangster, and falls in love with a loquacious girl, Kaali Gawde (Chopra).",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for Race
class RACE extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Race'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/racep.jpg',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Abbas Alibhai Burmawalla Mastan Alibhai Burmawalla\n WRITERS:Shiraz Ahmed Anurag Prapanna,\n  STARS: Saif Ali Khan, Akshaye Khanna, Bipasha Basu\n\n\nRace is a 2008 Indian Hindi-language crime film directed by Abbas–Mustan and written by Kiran Kotrial, Shiraz Ahmed, Anurag Prapanna, and Jitendra Parmar. It is the first installment in the Race franchise and stars Anil Kapoor, Saif Ali Khan, Akshaye Khanna, Bipasha Basu, Katrina Kaif, and Sameera Reddy. In the film, the professional and personal loyalties between brothers and horse race fixers Ranvir (Khan) and Rajiv Singh (Khanna) suffers an immense – and deadly – strain.\n\n\nRace released worldwide on 21st March, 2008, coinciding with the Holi festival weekend. It collected around ₹6.20 crore on its first day, followed by ₹6.80 crore on its second day and ₹7.50 crore on the third day, taking the three-day total to ₹20.50 crore At the end of its theatrical run, the film had grossed ₹60.64 crore domestically, and ₹103.45 crore worldwide, leading the film to be declared a 'HIT' by Box Office India. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for Bodyguard
class BODYGUARD extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bodyguard'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Siddique\n WRITERS:J.P. Chowksey,\n  STARS: Salman Khan, *Kareena Kapoo *Raj Babbar \n\n\nBodyguard is a 2011 Indian Hindi-language romantic comedy action film directed by Siddique from a screenplay by Siddique, J.P. Chowksey, Kiran Kotrial and Aloke Upadhyaya. It is a remake of the 2010 Malayalam film of the same name directed by Siddique and stars Salman Khan and Kareena Kapoor,[4] with Raj Babbar, Mahesh Manjrekar and Hazel Keech in supporting roles.[5] In the film, bodyguard Lovely Singh (Khan) is hired to shadow Divya Rana (Kapoor), and falls in love with Chhaya, a fake identity created by Divya.\n\n\nThe film broke many records upon its release. Within the first day of its release, it went on to become the highest opening day grosser for a Hindi film.[6] The film set another box office record, netting ₹103 million (US1.3 million) in its first week, thus becoming the highest opening week grossing Bollywood film until then. The film became a major commercial success with a worldwide gross of ₹234 million (US2.9 million). ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for Singham
class Singham extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Singham'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Rohit Shetty	\n WRITERS:Hari(original story), *Yunus Sajawal(screenplay), *Sajid(dialogue) ,\n  STARS:Ajay Devgn, Prakash Raj, Sudhanshu Pandey  \n\n\nSingham is a 2011 Indian Hindi-language action film directed by Rohit Shetty and produced by Reliance Entertainment, based on a script by writers Yunus Sajawal and Farhad-Sajid. A remake of the 2010 Tamil film Singam by Hari, the film stars Ajay Devgn as a station house officer turned police inspector Bajirao Singham alongside Kajal Aggarwal and Prakash Raj who reprises his role as in original.\n\n\nIt was theatrically released in India on 22 July 2011 with a strong box office response;[3] the film earned ₹876 million in India on the first day and a worldwide total of ₹1.57 billion against a ₹410 million budget, becoming a box-office blockbuster.  ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for sooryavanshi
class SOORYAVANSHI extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SOORYAVANSHI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Rohit Shetty	\n WRITERS:Sanchit Bedre(dialogue), Vidhi Ghodgaonkar(dialogue), Yunus Sajawal(screenplay),\n  STARS:Akshay Kumar, Katrina Kaif, Ajay Devgn  \n\n\nSooryavanshi is a 2021 Indian Hindi-language action film[5] written and directed by Rohit Shetty and produced by Hiroo Yash Johar, Karan Johar and Apoorva Mehta under Dharma Productions as well as Aruna Bhatia under Cape of Good Films, with Shetty producing the film under Rohit Shetty Picturez and Reliance Entertainment serving as distributor and co-producer. The fourth installment of Shetty's Cop Universe, it stars Akshay Kumar as ATS chief DCP Veer Sooryavanshi. Ajay Devgn and Ranveer Singh briefly reprise their Singham and Simmba roles from the Cop Universe while Katrina Kaif, Jackie Shroff, Jaaved Jaaferi, Vivan Bhatena, Niharica Raizada, Gulshan Grover, Abhimanyu Singh, Sikandar Kher, Nikitin Dheer and Kumud Mishra play pivotal roles.\n\n\nKumar's character was announced towards the end of Simmba that served as a character introduction of Sooryavanshi. Initially locked to release on 24 March 2020 and then 2021, it was postponed due to COVID-19 pandemic in India. After several delays, it finally released theatrically on 5 November 2021 coinciding with Diwali. Sooryavanshi received mixed reviews from critics, but became the first big successful Hindi film after COVID-19, with a worldwide gross of ₹295 crore. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}


//Hollywood(Comedy) begin
class Comedy extends StatelessWidget {
  var arrCom = [
    {
      'name': 'Housefull 3',
      'img': 'assets/images/housefull3.png',
    },
    {'name': 'Bareilly Ki Barfi', 'img': 'assets/images/barfi.png'},
    {'name': 'Chhichhore', 'img': 'assets/images/chichore.png'},
    {'name': 'Dhamaal', 'img': 'assets/images/Dhamaal.png'},
    {'name': "judwaa2", 'img': 'assets/images/judwaa2.png'},
    {'name': "bhoot_police",'img':'assets/images/bhoot_police.png'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("COMEDY"),
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
                      color: Colors.tealAccent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Image.asset(
                            arrCom[index]['img']!,
                            width: 120,
                          ),
                          const SizedBox(width: 15),
                          SizedBox(
                            width: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  arrCom[index]['name']!,
                                  overflow: TextOverflow.fade,
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 19,
                                      overflow: TextOverflow.fade,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.pinkAccent),
                                ),
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text('Back'))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ));
          },
          itemCount: arrCom.length,
        ));
  }
}
//for housfull3
class HOUSEFULL3 extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HOUSEFULL 3'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Sajid, Farhad Samji	\n WRITERS:K. Subhash(story)Farhad Samji(screenplay)Sajid(screenplay) ,\n  STARS:Akshay Kumar, Abhishek Bachchan, Riteish Deshmukh \n\n\nHousefull 3 is a 2016 Indian Hindi-language action comedy film co-written and directed by Sajid-Farhad and produced by Sajid Nadiadwala under the banner Nadiadwala Grandson Entertainment. The film is the third installment of the Housefull franchise and is distributed by Eros International. The film stars Akshay Kumar, Abhishek Bachchan, Riteish Deshmukh, Jacqueline Fernandez, Nargis Fakhri, Lisa Haydon, Chunky Pandey, and Jackie Shroff. The film was theatrically released in India on June 3, 2016, and grossed ₹1.954 billion worldwide on a budget of ₹85 million.\n\n\nThree robbers attempt to steal jewels from a building in London, but are captured by the police. Six years later, Batook Patel, a wealthy and successful businessman, disapproves marriage of his three beautiful daughters, Ganga, Jamuna, and Saraswati, as he believes that the previous ladies in his family were doomed because of marrying. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for Bareilly ki Barfi
class BKB extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bareilly Ki Barfi'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Ashwiny Iyer Tiwari\n WRITERS:Bareilly Ki Barfi(novel)Shreyas Jain,Nitesh Tiwari,\n  STARS: Ayushmann Khurrana,Kriti Sanon, Rajkummar Rao\n\n\n Bareilly Ki Barfi (transl. Bareilly's Barfi) is a 2017 Indian Hindi-language romantic comedy film directed by Ashwiny Iyer Tiwari based on Nicolas Barreau's novel, The Ingredients of Love. It stars Kriti Sanon, Ayushmann Khurrana, and Rajkummar Rao in lead roles with Pankaj Tripathi and Seema Pahwa in supporting roles. It was theatrically released in India on 18 August 2017, coinciding Independence Day Weekend, receiving highly positive reviews from critics, and emerged as a commercial success grossing over ₹600 million (US7.5 million) worldwide against a budget of ₹200 million (US2.5 million). It ran for more than 70 days in both India and abroad, and received 8 nominations at the 63rd Filmfare Awards, including Best Film and Best Supporting Actress (Pahwa), and won Best Director (Iyer Tiwari) and Best Supporting Actor (Rao).",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for Chhichhore
class Chhichhore extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Chhichhore'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Nitesh Tiwari	\n WRITERS:Piyush Gupta, Nikhil Mehrotra, Nitesh Tiwari ,\n  STARS:Sushant Singh Rajput,Shraddha Kapoor, Varun Sharma  \n\n\n Chhichhore (transl. Immature) is a National award- winning, 2019 Indian Hindi-language coming-of-age comedy-drama film directed by Nitesh Tiwari, written by Tiwari in association with Piyush Gupta and Nikhil Mehrotra, and produced by Sajid Nadiadwala under Nadiadwala Grandson Entertainment, with Fox Star Studios acquiring the distribution rights. Based on Tiwari's experiences as a student of the Indian Institute of Technology, Bombay, the film stars Sushant Singh Rajput, Shraddha Kapoor, Varun Sharma, Tahir Raj Bhasin, Naveen Polishetty, Tushar Pandey and Saharsh Kumar Shukla, with Shishir Sharma and Mohammad Samad in supporting roles.\n\n\nSet parallely in the 1990s and 2019, Chhichhore tells the story of Aniruddh 'Anni' Pathak, a middle-aged divorcee, whose son Raghav tries to commit suicide after failing to clear JEE Advanced (a prestigious engineering entrance examination), but survives, though he doesn't want to live due to the fear of being branded a 'loser' for the rest of his life. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for Dhamaal
class Dhamaal extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dhamaal'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Indra Kumar	\n WRITERS:Paritosh Painter(story)Balvinder Singh Suri(dialogue)Bunty Rathore(dialogue),\n  STARS:Sanjay Dutt *Riteish Deshmukh *Arshad Warsi \n\n\nDhamaal (transl. Fun) is a 2007 Indian Hindi-language comedy film directed by Indra Kumar and produced by Ashok Thakeria. The film stars Sanjay Dutt, Ritesh Deshmukh, Arshad Warsi, Aashish Chaudhary and Javed Jaffrey in the lead roles while Asrani, Sanjay Mishra, Murli Sharma, Vijay Raaz, Manoj Pahwa, Tiku Talsania and Prem Chopra are featured in supporting roles. It is heavily inspired from the 2001 American comedy film Rat Race directed by Jerry Zucker (which in turn was inspired by Stanley Kramer's 1963 classic It's a Mad, Mad, Mad, Mad World). It is the first installment of the Dhamaal film series.\n\nA third reboot sequel, under the name Total Dhamaal was released in February 2019, with only Deshmukh, Warsi and Jaffrey returning with an entirely new cast and a fresh story, having no connections to Dhamaal and Double Dhamaal. ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for judwaa2
class Judwaa2 extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('JUDWAA 2'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:David Dhawan\n WRITERS: Yunus Sajawal(screenplay) Farhad Samji(dialogue) Sajid(dialogue),\n  STARS: Varun DhawanAbhinay Raj SinghJacqueline Fernandez  \n\n\nJudwaa 2 (transl. Twins 2) is a 2017 Indian Hindi-language action-comedy film directed by David Dhawan. A reboot of the 1997 film Judwaa, which itself is a remake of Telugu film Hello Brother (1994). The film stars Varun Dhawan playing twins Raja and Prem opposite Jacqueline Fernandez and Taapsee Pannu. Produced by Nadiadwala Grandson Entertainment, Judwaa 2[8] was released on 29 September 2017.\n\n\nTwo brothers (twins) born to an honest businessman are separated at birth when their father exposes a smuggling racket and a king pin. One of the brothers is thought to be dead but only resurfaces stronger after living life on the streets to reunite with his family over a sequence of events and twist of fate. Genetically bound by reflexes both the brother's lives interlink in strange ways and a comedy of errors. They eventually come together to destroy the smuggling nexus and save their family from a downfall that awaits them ",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
//for bhoot_police
class bhoot_police extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bhoot Police'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Pawan Kripalani	\n WRITERS: Pawan Kripalani(screenplay writer) Pooja Ladha Surti(screenplay writer) Sumit Batheja(screenplay writer) ,\n  STARS:Saif Ali Khan Abhinay Raj Singh Arjun Kapoor  \n\n\nBhoot Police (transl. Ghost police) is a 2021 Indian Hindi-language horror comedy film, directed by Pavan Kirpalani and produced by Ramesh Taurani and Akshai Puri.[3] The film stars Saif Ali Khan, Arjun Kapoor, Jacqueline Fernandez, Yami Gautam Dhar and Javed Jaffrey, and premiered on 10 September 2021 on Disney+ Hotstar.\n\n\nThe movie starts with them arriving in a village in Rajasthan to perform an exorcism on a young girl who was being possessed by her late grandfather. However, Vibhooti soon realizes that the girl was faking the possession to which she admits. Turns out, her parents were forcing her to get married while she wanted to continue her studies. The brothers agree to help her and although Chiraunji is against the illicit ways his brother uses, the duo performs a fake exorcism.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}


class Science_Fiction extends StatelessWidget {
  var ScienceF = [
    {'name': 'Krrish 3', 'img': 'assets/images/krrish.png'},
    {'name': 'Ra.One', 'img': 'assets/images/raone.png'},
    {'name': '2.0', 'img': 'assets/images/2.0.png'},
    {'name': 'Malang', 'img': 'assets/images/malang.png'},
    {'name': 'Robot', 'img': 'assets/images/robot.png'},
    {'name': 'Krrish', 'img': 'assets/images/krish.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SCIENCE FICTION'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    Image.asset(ScienceF[index]['img']!),
                    SizedBox(height: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(ScienceF[index]['name']!,style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 70,bottom: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Back')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: ScienceF.length,
        ));
  }
}
class Krrish_3 extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Krrish 3'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Rakesh Roshan \n WRITERS: Rakesh Roshan(story) Robin Bhatt(screenplay) Honey Irani(screenplay)\n  STARS: Hrithik Roshan *Vivek Oberoi *Priyanka Chopra Jonas \n\n\nKrrish 3 is a 2013 Indian Hindi-language superhero film written, produced and directed by Rakesh Roshan,[5] who wrote the screenplay with Honey Irani and Robin Bhatt. It is the third film in the Krrish series, following Koi... Mil Gaya (2003) and Krrish (2006). The film stars Hrithik Roshan, Vivek Oberoi, Priyanka Chopra and Kangana Ranaut. The story follows Krishna Mehra, a.k.a. Krrish and his scientist father, who face an elaborate conspiracy orchestrated by the evil genius Kaal and his gang of mutants, led by the ruthless Kaya.\n\n\nKrrish 3 was initially scheduled to release as a 3D film. However, due to lack of release time to convert the film to 3D, director Rakesh Roshan mentioned that the film will be released only in the 2D format. Krrish 3 released worldwide on 1 November 2013.[1][8] Produced on a budget of ₹95 crore (equivalent to ₹137 crore or US17 million in 2020), the film grossed ₹393.37 crore (equivalent to ₹568 crore or US71 million in 2020) worldwide. It has received generally positive reviews,with praise for Roshan and Ranaut's performances, the visual effects, the cinematography, and entertainment value, but with criticism of the music by Rajesh Roshan, the narration, and the screenplay.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Ra_One extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Ra.One'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Anubhav Sinha \n WRITERS: David Benullo Kanika Dhillon(dialogue) Niranjan Iyengar(dialogue)\n  STARS: Shah Rukh Khan Arjun Rampal Kareena Kapoor \n\n\nRa.One is a 2011 Indian Hindi-language superhero film directed by Anubhav Sinha. The film stars Shah Rukh Khan, Kareena Kapoor, Arjun Rampal and Armaan Verma with Shahana Goswami, Tom Wu, Dalip Tahil and Satish Shah in supporting roles. The script, written by Sinha and Kanika Dhillon, originated as an idea that Sinha got when he saw a television commercial and which he subsequently expanded. The film follows Shekhar Subramanium (Khan), in London in the year 2013, a game designer who creates a motion sensor-based game in which the antagonist (Ra.One) is more powerful than the protagonist (G.One). The former escapes from the game's virtual world and enters the real world; his aim is to kill Lucifer, the game ID of Shekhar's son and the only player to have challenged Ra.One's power. Relentlessly pursued, the family is forced to bring out G.One from the virtual world to defeat Ra.One and protect them.\n\nPrincipal photography began in March 2010 and took place in India and the United Kingdom and was overseen by an international crew. The post-production involved 3-D conversion and the application of visual effects, the latter being recognised as a technological breakthrough among Indian films.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class R2 extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('2.0'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: S. Shankar \n WRITERS: Jayamohan(tamil dialogue) Lakshmi Saravanakumar(additional tamil dialogue) S.Shankar\n  STARS: RajinikanthAkshay KumarAmy Jackson \n\n\n2.0 is a 2018 Indian Tamil-language science fiction action film directed by S. Shankar who co-wrote the film with B. Jeyamohan and Madhan Karky. Produced by Subaskaran under the banner of Lyca Productions. As the second instalment in the Enthiran franchise, 2.0 is a standalone sequel to Enthiran (2010), featuring Rajinikanth reprising the roles of Vaseegaran and Chitti the Robot, alongside Akshay Kumar as Pakshi Rajan and Amy Jackson as Nila. also Sudhanshu Pandey, Adil Hussain, Kalabhavan Shajohn, and K. Ganesh appear in supporting roles. The soundtrack is composed by A. R. Rahman, with lyrics written by Madhan Karky and Na. Muthukumar. The film follows the conflict between Chitti, the once dismantled humanoid robot, and Pakshi Rajan, a former ornithologist who seeks vengeance upon cell phone users to prevent avian population decline.\n\n\nProduced on an estimated budget of ₹500 crore (US63 million) to ₹570 crore (US71 million), 2.0 is the second most expensive Indian film to date and the most expensive Indian film at the time of its release. Production began in 2015, with principal photography conducted at AVM Studios later that year. The first schedule was filmed at EVP World.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Malang extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Malang'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Mohit Suri\n WRITERS: Aseem Arrora Aniruddha Guha(screenplay) Mohit Suri\n  STARS:Aditya Roy KapoorAnil KapoorDisha Patani \n\n\nMalang (transl. Vagrant/Wanderer) is a 2020 Indian Hindi-language action thriller film directed by Mohit Suri and produced by T-Series in collaboration with Luv Films and Northern Lights Entertainment with distribution by Yash Raj Films.[1] It stars Aditya Roy Kapur and Disha Patani with Anil Kapoor and Kunal Khemu as the antagonists.\n\nThe shooting began in March 2019 and took place primarily in Goa, but it was also filmed in Mauritius. Final schedule was wrapped up in October 2019. The female lead role went to Patani after Shraddha Kapoor's refusal.\n\nInitially announced as a Valentine's Day 2020 release, Malang was preponed by 1 week to avoid clash with Love Aaj Kal. It was finally released worldwide in cinemas on 7 February 2020. It was praised for its music, action sequences, direction and cast performances, Malang has earned ₹84.50 crore (US11 million) worldwide thus becoming a commercial success.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Robot extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Robot'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:S. Shankar \n WRITERS: Madhan Karky(dialogue) Swanand Kirkire(hindi dialogue) S.Shankar(dialogue)\n  STARS: Rajinikanth Aishwarya Rai Bachchan Danny Denzongpa\n\n\nEnthiran (transl. Robot) is a 2010 Indian Tamil-language science fiction action film written and directed by S. Shankar.[6] It is the first instalment in the Enthiran franchise. The film stars Rajinikanth and Aishwarya Rai Bachchan with Danny Denzongpa, Santhanam and Karunas in supporting roles. The soundtrack album and background score were composed by A. R. Rahman while the dialogues, cinematography, editing and art direction were handled by Madhan Karky, R. Rathnavelu, Anthony and Sabu Cyril respectively.\n\n\nThe story revolves around the struggle of a scientist K. Vaseegaran (Rajinikanth) to control his android humanoid robot named Chitti (also Rajinikanth), after Chitti's software is upgraded to give it the ability to comprehend and exhibit human emotions. The project backfires when Chitti falls in love with Vaseegaran's girlfriend, Sana (Rai), and is manipulated by Bohra (Denzongpa), a rival scientist, into becoming homicidal.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Krrish extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Krrish'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}







class Adventure extends StatelessWidget {
  var arrADV = [
    {'name': 'Junglee', 'img': 'assets/images/junglee.png'},
    {'name': 'Thugs of Hindostan', 'img': 'assets/images/thugs.png'},
    {'name': 'Mohenjo Daro', 'img': 'assets/images/mohenjo.png'},
    {'name': 'Bang Bang', 'img': 'assets/images/bang.png'},
    {'name': 'Baahubali 2', 'img': 'assets/images/bahubali.png'},
    {'name': 'Zindagi\nNa Milegi Dobara', 'img': 'assets/images/zindagi.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ADVANTURE'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    Image.asset(arrADV[index]['img']!),
                    SizedBox(height: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(arrADV[index]['name']!,style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.brown
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 70,bottom: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Back')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: arrADV.length,
        ));
  }
}
class Junglee extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Krrish'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class TOH extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thugs of Hindostan'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Mohenjo_Daro extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Mohenjo Daro'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Bang_Bang extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Bang Bang'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Baahubali_2 extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Krrish'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}
class Zindagi extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Zindagi Na Milegi Dobara'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: \n WRITERS:\n  STARS: \n\n\n",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.brown
                    ),),
                ),
              )

            ],
          ),
        )
    );
  }
}





class Horror extends StatelessWidget {
  var arrHOR = [
    {'name': 'Stree', 'img': 'assets/images/stree.png'},
    {'name': 'Bhoot', 'img': 'assets/images/bhoot.png'},
    {'name': 'Bhool Bhulaiyaa', 'img': 'assets/images/bhul.png'},
    {'name': '13B', 'img': 'assets/images/13B.png'},
    {'name': '1920: Evil Returns', 'img': 'assets/images/1920.png'},
    {'name': 'Bulbbul', 'img': 'assets/images/Bulbbul.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SCIENCE FICTION'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    Image.asset(arrHOR[index]['img']!),
                    SizedBox(height: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(arrHOR[index]['name']!,style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 70,bottom: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Back')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: arrHOR.length,
        ));
  }
}




class Fantasy extends StatelessWidget {
  var arrFAN= [
    {'name': 'ANTIM', 'img': 'assets/images/antim.png'},
    {'name': 'WAR', 'img': 'assets/images/war.png'},
    {'name': 'ANDHADHUN', 'img': 'assets/images/anda.png'},
    {'name': 'RADHE', 'img': 'assets/images/radhe.png'},
    {'name': 'DRISHYAM', 'img': 'assets/images/Drishyam.png'},
    {'name': 'Ae-Dil-Hai-Mushkil', 'img': 'assets/images/Ae_dil.png'},

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('FANTASY'),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                color: Colors.lightBlue,
                child: Row(
                  children: [
                    Image.asset(arrFAN[index]['img']!),
                    SizedBox(height: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(arrFAN[index]['name']!,style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.brown
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(start: 70,bottom: 20),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Back')),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          },
          itemCount: arrFAN.length,
        ));
  }
}