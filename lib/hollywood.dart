import 'package:flutter/material.dart';

class HollyWood extends StatelessWidget {
  var arrHcontant = [
    {
      'name': 'ACTION',
      'img': "assets/images/action1.png",
      'bgcolor': '0',
    },
    {
      'name': 'COMEDY',
      'img': 'assets/images/com.png',
      'bgcolor': '1',
    },
    {
      'name': 'SCIENCE FICTION',
      'img': 'assets/images/sci3.png',
      'bgcolor': '2',
    },
    {
      'name': 'ADVENTURE',
      'img': 'assets/images/advv.png',
      'bgcolor': '3',
    },
    {
      'name': 'HORROR',
      'img': 'assets/images/horror.png',
      'bgcolor': '4',
    },
    {
      'name': 'FANTASY',
      'img': 'assets/images/fantasy.png',
      'bgcolor': '5',
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
          title: Text('HOLLYWOOD'),
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
                            arrColor[int.parse(arrHcontant[index]['bgcolor']!)],
                        borderRadius: BorderRadius.circular(11.0)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Image.asset(
                            arrHcontant[index]['img']!,
                            width: 120,
                          ),
                          const SizedBox(width: 15),
                          InkWell(
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              //crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  arrHcontant[index]['name']!,
                                  overflow: TextOverflow.fade,
                                  maxLines: 2,
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
          itemCount: arrHcontant.length,
        ));
  }
}

//Action Movies list
class Action extends StatelessWidget {
  var index;
  var arrList = [
    {'name': 'Thor:Love and Thunder', 'img': 'assets/images/thor.png'},
    {'name': 'Spider-Man: No Way Home', 'img': 'assets/images/spider.png'},
    {'name': 'Thor:Love and Thunder', 'img': 'assets/images/thor.png'},
    {'name': 'The Batman', 'img': 'assets/images/batman.png'}
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
                          InkWell(
                            onTap: (){

                            },
                            child: Image.asset(
                              arrList[index]['img']!,
                              width: 120,
                            ),
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
                                    Navigator.push(context, MaterialPageRoute(builder:(context){
                                      if(index==0)
                                        {
                                          return Thor();
                                        }
                                      else if(index==1)
                                        {
                                          return Spider();
                                        }
                                      else
                                        {
                                          return TheBatMan();
                                        }
                                    }));
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
class Spider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Spider-Man'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 7,
                  color: Colors.purpleAccent,
                  //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11) ),
                  child: Image.asset('assets/images/spider1.jpg',height: 227,width: double.infinity,)),
              //SizedBox(height: 15,),
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Spider-Man:\n  No Way Home is a 2021 American superhero film based on the Marvel Comics character Spider-Man, co-produced by Columbia Pictures and Marvel Studios and distributed by Sony Pictures Releasing.\nIt is the sequel to Spider-Man: Homecoming (2017) and Spider-Man: Far From Home (2019), and the 27th film in the Marvel Cinematic Universe (MCU). \n\nThe film was directed by Jon Watts and written by Chris McKenna and Erik Sommers. It stars Tom Holland as Peter Parker / Spider-Man alongside Zendaya, Benedict Cumberbatch, Jacob Batalon, Jon Favreau, Jamie Foxx, Willem Dafoe, Alfred Molina, Benedict Wong, Tony Revolori, Marisa Tomei, Andrew Garfield, and Tobey Maguire. In the film, Parker asks Dr. Stephen Strange (Cumberbatch) to use magic to make his identity as Spider-Man a secret again following its public revelation at the end of Far From Home. When the spell goes wrong, the multiverse is broken open, which allows visitors from alternate realities to enter Parker's universe.",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                  ),
                ),
              )
            ],
          ),
        )
    );
  }

}

class Thor extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                  color: Colors.grey,
                  child: Image.asset('assets/images/thor1.jpg',height: 210,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text('Thor: Love and Thunder is a 2022 American superhero film based on Marvel Comics featuring the character Thor, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures.\nIt is the sequel to Thor: Ragnarok (2017) and the 29th film in the Marvel Cinematic Universe (MCU).\n\nThe film is directed by Taika Waititi, who co-wrote the script with Jennifer Kaytin Robinson, and stars Chris Hemsworth as Thor alongside Christian Bale, Tessa Thompson, Jaimie Alexander, Waititi, Russell Crowe, and Natalie Portman. In the film, Thor attempts to find inner peace, but must return to action and recruit Valkyrie (Thompson), Korg (Waititi), and Jane Foster (Portman)—who is now the Mighty Thor—to stop Gorr the God Butcher (Bale) from eliminating all gods.',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey
                  ),),
                ),
              )
            ],
          ),
        )
    );
  }

}

class TheBatMan extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 5,
                  color: Colors.grey,
                  child: Image.asset('assets/images/thebatman.jpg',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" Director: Matt Reeves\n Writers: Matt Reeves Peter CraigBob Kane,\n                (created by: Batman)\nStars: Robert Pattinson Zoë Kravitz Jeffrey Wright\n\n\nThe Batman is a 2022 American superhero film based on the DC Comics character Batman. Produced by Warner Bros.Pictures, DC Films, 6th & Idaho, and Dylan Clark Productions, and distributed by Warner Bros.\n\nPictures, it is a reboot of the Batman film franchise. The film was directed by Matt Reeves, who wrote the screenplay with Peter Craig. It stars Robert Pattinson as Bruce Wayne / Batman alongside Zoë Kravitz, Paul Dano, Jeffrey Wright, John Turturro, Peter Sarsgaard, Andy Serkis, and Colin Farrell. The film sees Batman, who has been fighting crime in Gotham City for two years, uncover corruption while pursuing the Riddler (Dano), a serial killer who targets Gotham's elite.",
                    style: TextStyle(
                        fontSize: 15,
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
      'name': 'Once Upon a Time... In Hollywood',
      'img': 'assets/images/outh.png',
    },
    {'name': 'Hustle', 'img': 'assets/images/hustle.png'},
    {'name': 'See How They Run', 'img': 'assets/images/run.png'},
    {'name': 'CODA', 'img': 'assets/images/coda.png'},
    {'name': "Don't Look Up", 'img': 'assets/images/donu.png'},
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
                                      Navigator.push(context, MaterialPageRoute(builder: (context){
                                        if(index==0)
                                          {
                                            return Once();
                                          }
                                        else if(index==1)
                                          {
                                            return Hustle();
                                          }
                                        else if(index==2)
                                          {
                                            return Run();
                                          }
                                        else if(index==3)
                                          {
                                            return Coda();
                                          }else if(index==4)
                                          {
                                            return DontLook();
                                          }
                                        else
                                          {
                                            return Text('no');
                                          }
                                      }));
                                    },
                                    child: Text('click'))
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

class Once extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/once.jpg',height: 230,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Quentin Tarantino\n WRITERS: Quentin Tarantino,\n STARS:Leonardo DiCaprioBrad PittMargot Robbie\n\n\nOnce Upon a Time in Hollywood[a] is a 2019 comedy-drama film written and directed by Quentin Tarantino. Produced by Columbia Pictures, Bona Film Group, Heyday Films, and Visiona Romantica and distributed by Sony Pictures Releasing, it is a co-production between the United States, United Kingdom, and China. It features a large ensemble cast led by Leonardo DiCaprio, Brad Pitt, and Margot Robbie. Set in 1969 Los Angeles, the film follows a fading actor and his stunt double as they navigate the rapidly changing film industry, with the looming threat of the Tate murders hanging overhead. It features multiple storylines in a modern fairy tale tribute to the final moments of Hollywood's golden age.",
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

class Hustle extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/hustlep.jpg',height: 230,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Jeremiah Zagar\n WRITERS: Taylor MaterneWill Fetters,\n STARS: Adam SandlerQueen LatifahJuancho Hernangome\n\n\nHustle is a 2022 American sports comedy-drama film directed by Jeremiah Zagar, from a screenplay by Taylor Materne and Will Fetters. The film stars Adam Sandler as an NBA scout who discovers a raw but talented player in Spain (Juancho Hernangómez) and tries to prepare him for the NBA draft. Current Minnesota Timberwolves player Anthony Edwards plays the main antagonist, Kermit Wilts. Queen Latifah, Ben Foster, Robert Duvall, and Heidi Gardner also star, while LeBron James acts as producer through his SpringHill Company banner.",
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
class Run extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/see_how.jpg',height: 240,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Tom George\n WRITERS: Mark Chappell,\nStars: Sam RockwellHarris DickinsonSaoirse Ronan \n\n\nA pair of quirky cops — Inspector Stoppard (Sam Rockwell) and Constable Stalker (Saoirse Ronan) — must unravel the mystery behind the murders of a film’s cast and crew in London's glamorous theatre scene and dark under-alleys.\n\nThe first footage introduces viewers to Rockwell’s seasoned Inspector Stoppard and Ronan’s rookie Constable Stalker. The pair team up to solve a murder most foul in London’s West End theater district during the 1950s, investigating the seedy underbelly of England’s glamorous of artists and turning over a litany of brash, creative suspects.",
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
class Coda extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/codap.jpg',height: 230,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Sian Heder\n WRITERS: Sian Heder,\n   Stars: Emilia JonesMarlee MatlinTroy Kotsur\n\n\nCODA is a 2021 coming-of-age comedy-drama film written and directed by Sian Heder. An English-language remake of the 2014 French-Belgian film La Famille Bélier, it stars Emilia Jones as the titular child of deaf adults (CODA) and only hearing member of a deaf family, who attempts to help her family's struggling fishing business, while pursuing her own aspirations of being a singer. Eugenio Derbez, Troy Kotsur, Ferdia Walsh-Peelo, Daniel Durant, and Marlee Matlin are featured in supporting roles. An international co-production between the United States and France with La Famille Bélier producer Philippe Rousselet reprising his role as producer, it was filmed on location in Gloucester, Massachusetts, in the United States.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal
                    ),),
                ),
              )
            ],
          ),
        )
    );
  }
}
class DontLook extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Don't Look Up"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/dontp.jpg',height: 230,width: 450,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 470,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Adam McKay\n WRITERS:  Adam McKay(screenplay by)David Sirota(story by),\nStars: Leonardo DiCaprioJennifer LawrenceMeryl Streep \n\n\nDon't Look Up is a 2021 American apocalyptic satire film written, co-produced, and directed by Adam McKay from a story he co-wrote with David Sirota,[1] and starring an ensemble cast including Leonardo DiCaprio, Jennifer Lawrence, Rob Morgan, Jonah Hill, Mark Rylance, Tyler Perry, Timothée Chalamet, Ron Perlman, Ariana Grande, Scott Mescudi (Kid Cudi), Cate Blanchett, and Meryl Streep. It tells the story of two astronomers attempting to warn humanity about an approaching comet that will destroy human civilization. The impact event is an allegory for climate change, and the film is a satire of government, political, celebrity, and media indifference to the climate crisis.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
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
    {'name': 'Back to the Future', 'img': 'assets/images/Backf.png'},
    {'name': 'Avengers: Endgame', 'img': 'assets/images/avg.png'},
    {'name': 'Iron Man', 'img': 'assets/images/iron.png'},
    {'name': 'X-Men: Days \n of Future Past', 'img': 'assets/images/X_man.png'},
    {'name': 'Doctor Strange', 'img': 'assets/images/dr_strange.png'},
    {'name': 'Replicas', 'img': 'assets/images/relplicas.png'},

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
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  if(index==0)
                                    {
                                      return Backfuture();
                                    }
                                  else if(index==1)
                                    {
                                      return Avengeres();
                                    }
                                  else if(index==2)
                                    {
                                      return Ironman();
                                    }
                                  else if(index==3)
                                    {
                                      return Xman();
                                    }
                                  else if(index==4)
                                    {
                                      return Doctorstr();
                                    }
                                  else
                                    {
                                      return Replicas();
                                    }
                                }));
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
class Backfuture extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/backp.jpg',height: 270,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 530,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Robert Zemeckis \n WRITERS: Robert ZemeckisBob Gale,\n Stars: Michael J. FoxChristopher LloydLea Thompson.\n\n\nGale and Zemeckis conceived the idea for Back to the Future in 1980. They were desperate for a successful film after numerous collaborative failures, but the project was rejected over 40 times by various studios because it was not considered raunchy enough to compete with the successful comedies of the era. A development deal was secured with Universal Pictures following Zemeckis's success directing Romancing the Stone (1984). Fox was the first choice to portray Marty but was unavailable; Eric Stoltz was cast instead. Shortly after principal photography began in November 1984, Zemeckis determined Stoltz was not right for the part and made the concessions necessary to hire Fox, including re-filming scenes already shot with Stoltz and adding 4 million to the budget. Back to the Future was filmed in and around California and on sets at Universal Studios.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                ),
              )
            ],
          ),
        )
    );
  }
}

class Avengeres extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Thor'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/avgp.jpg',height: 228,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.black12,
                height: 900,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Anthony RussoJoe Russo\n WRITERS: Christopher Markus(screenplay by)Stephen McFeely(screenplay by)Stan Lee(based on the Marvel comics by),\n  Stars: Robert Downey Jr.Chris EvansMark Ruffalo.\n\n\nAvengers: Endgame is a 2019 American superhero film based on the Marvel Comics superhero team the Avengers. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the direct sequel to Avengers: Infinity War (2018) and the 22nd film in the Marvel Cinematic Universe (MCU). Directed by Anthony and Joe Russo and written by Christopher Markus and Stephen McFeely, the film features an ensemble cast including Robert Downey Jr., Chris Evans, Mark Ruffalo, Chris Hemsworth, Scarlett Johansson, Jeremy Renner, Don Cheadle, Paul Rudd, Brie Larson, Karen Gillan, Danai Gurira, Benedict Wong, Jon Favreau, Bradley Cooper, Gwyneth Paltrow, and Josh Brolin. In the film, the surviving members of the Avengers and their allies attempt to reverse the destruction caused by Thanos in Infinity War.\n\n\nThe film was announced in October 2014 as Avengers: Infinity War – Part 2, but Marvel later removed this title. The Russo brothers joined as directors in April 2015, with Markus and McFeely signing on to write the script a month later. The film serves as a conclusion to the story of the MCU up to that point, ending the story arcs for several main characters. The plot revisits several moments from earlier films, bringing back actors and settings from throughout the franchise. Filming began in August 2017 at Pinewood Atlanta Studios in Fayette County, Georgia, shooting back-to-back with Infinity War, and ended in January 2018.",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                    ),),
                ),
              )
            ],
          ),
        )
    );
  }
}

class Ironman extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Iron Man'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/iron.jpg',height: 210,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 900,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Jon Favreau\n WRITERS: Mark Fergus(screenplay)Hawk Ostby(screenplay)Art Marcum(screenplay)\n  Stars: Robert Downey Jr.Gwyneth PaltrowTerrence Howard.\n\n\nIron Man is a 2008 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Paramount Pictures,[N 1] it is the first film in the Marvel Cinematic Universe (MCU). Directed by Jon Favreau from a screenplay by the writing teams of Mark Fergus and Hawk Ostby, and Art Marcum and Matt Holloway, the film stars Robert Downey Jr. as Tony Stark / Iron Man alongside Terrence Howard, Jeff Bridges, Shaun Toub, and Gwyneth Paltrow. In the film, following his escape from captivity by a terrorist group, world famous industrialist and master engineer Tony Stark builds a mechanized suit of armor and becomes the superhero Iron Man."
                      "\n\nA film featuring the character was in development at Universal Pictures, 20th Century Fox, and New Line Cinema at various times since 1990, before Marvel Studios reacquired the rights in 2005. Marvel put the project in production as its first self-financed film, with Paramount Pictures distributing. Favreau signed on as director in April 2006, and faced opposition from Marvel when trying to cast Downey in the title role; the actor was signed in September. Filming took place from March to June 2007, primarily in California to differentiate the film from numerous other superhero stories that are set in New York City-esque environments. During filming, the actors were free to create their own dialogue because pre-production was focused on the story and action. Rubber and metal versions of the armor, created by Stan Winston's company, were mixed with computer-generated imagery to create the title character.",
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

class Xman extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Iron Man'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/xmanp.jpg',height: 270,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Bryan Singer\n WRITERS: Tom DeSanto(story)Bryan Singer(story)David Hayter(screenplay),\n  STARS: Patrick StewartHugh JackmanIan McKellen  .\n\n\nX-Men: Days of Future Past is a 2014 American superhero film directed and produced by Bryan Singer and written by Simon Kinberg from a story by Kinberg, Jane Goldman, and Matthew Vaughn. The film is based on the fictional X-Men characters that appear in Marvel Comics, the fifth mainline installment of the X-Men film series, a sequel to X-Men: The Last Stand (2006) and X-Men: First Class (2011), a follow-up to The Wolverine (2013), and the seventh installment overall. It stars an ensemble cast, including Hugh Jackman, James McAvoy, Michael Fassbender, Jennifer Lawrence, Halle Berry, Anna Paquin, Elliot Page,[a] Peter Dinklage, Ian McKellen, and Patrick Stewart.\n\nThe story, inspired by the 1981 Uncanny X-Men storyline Days of Future Past by Chris Claremont and John Byrne, focuses on two time periods, with Logan traveling back in time to 1973 to change history and prevent an event that results in unspeakable destruction for both humans and mutants.",
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

class Doctorstr extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Doctor Strange'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/drstrangep.jpg',height: 230,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Scott Derrickson\n WRITERS: Jon SpaihtsScott DerricksonC. Robert Cargill,\n  STARS: Benedict CumberbatchChiwetel EjioforRachel McAdams  .\n\n\nDoctor Strange is a 2016 American superhero film based on the Marvel Comics character of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the 14th film in the Marvel Cinematic Universe (MCU). The film was directed by Scott Derrickson from a screenplay he wrote with Jon Spaihts and C. Robert Cargill, and stars Benedict Cumberbatch as neurosurgeon Stephen Strange along with Chiwetel Ejiofor, Rachel McAdams, Benedict Wong, Michael Stuhlbarg, Benjamin Bratt, Scott Adkins, Mads Mikkelsen, and Tilda Swinton. In the film, Strange learns the mystic arts after a career-ending car crash.\n\nVarious incarnations of a Doctor Strange film adaptation had been in development since the mid-1980s, until Paramount Pictures acquired the film rights in April 2005 on behalf of Marvel Studios. Thomas Dean Donnelly and Joshua Oppenheimer were brought on board in June 2010 to write a screenplay.",
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

class Replicas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Replicas'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/replicasp.jpg',height: 230,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Jeffrey Nachmanoff\n WRITERS: Chad St. John(screenplay by)Stephen Hamel(story by),\n  STARS: Keanu ReevesAlice EveThomas Middleditch.\n\n\nReplicas is a 2018 American science fiction thriller film directed by Jeffrey Nachmanoff, and written by Chad St. John, from a story by Stephen Hamel. The film tells the story of a neuroscientist who violates the law and bioethics to bring his family members back to life after they die in a car accident. It stars Keanu Reeves, Alice Eve and Thomas Middleditch.",
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
    {'name': 'Jurassic\nWorld Dominion', 'img': 'assets/images/jw.png'},
    {'name': 'The Man from\n  Toronto', 'img': 'assets/images/Toronto.png'},
    {'name': '\n  Uncharted', 'img': 'assets/images/uncharted.png'},
    {'name': 'Morbius', 'img': 'assets/images/morbius.png'},
    {'name': 'Star Wars', 'img': 'assets/images/star.png'},
    {'name': 'Eternals', 'img': 'assets/images/Eternals.png'},

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
                                Navigator.push(context, MaterialPageRoute(builder: (context){
                                  if(index==0)
                                    {
                                      return JWD();
                                    }
                                  else if(index==1)
                                    {
                                      return Toronto();
                                    }
                                  else if(index==2)
                                  {
                                    return Uncharted();
                                  }
                                  else if(index==3)
                                    {
                                      return Morbius();
                                    }
                                  else if(index==4)
                                    {
                                      return Star_Wars();
                                    }
                                  else

                                    {
                                      return Eternals();
                                    }
                                }));
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
class JWD extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Jurassic World Dominion'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/jurassicp.jpg',height: 225,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Colin Trevorrow\n WRITERS: Emily Carmichael(screenplay by)Colin Trevorrow(screenplay by)Derek Connolly(story by),\n  STARS: Chris PrattBryce Dallas HowardLaura Dern.\n\n\nJurassic World Dominion is a 2022 American science fiction action film directed by Colin Trevorrow, who co-wrote the screenplay with Emily Carmichael. Based on a story by Trevorrow and Derek Connolly, it is a sequel to Jurassic World: Fallen Kingdom (2018) and the third film in the Jurassic World trilogy. It is also the sixth installment overall in the Jurassic Park franchise, concluding the storyline from the original Jurassic Park trilogy. As with its predecessors, Frank Marshall and Patrick Crowley produced the film with Trevorrow and Jurassic Park (1993) director Steven Spielberg as executive producers.\n\n\nThe film stars an ensemble cast including Chris Pratt, Bryce Dallas Howard, Laura Dern, Jeff Goldblum, Sam Neill, DeWanda Wise, Mamoudou Athie, BD Wong, and Omar Sy. Dern, Goldblum, and Neill reprise their roles from the Jurassic Park trilogy, appearing together for the first time since the 1993 film. The film is set four years after the events of Fallen Kingdom, with dinosaurs now living alongside humans around the world. It follows Owen Grady and Claire Dearing as they embark on a rescue mission, while Alan Grant and Ellie Sattler reunite with Ian Malcolm to expose a conspiracy by the genomics corporation Biosyn, a once rival of the defunct InGen..",
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

class Toronto extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The Man from Toronto'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/torontop.jpeg',height: 250,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Patrick Hughes\n WRITERS: Robbie Fox(screenplay by) (story by)Chris Bremner(screenplay by)Jason Blumenthal(story by),\n  STARS: Kevin HartWoody HarrelsonJasmine Mathews.\n\n\nTeddy (Kevin Hart), the protagonist of Netflix’s “The Man From Toronto,” is an irritating, motormouthed, underachieving idiot. Anyone who can spend more than ten minutes with him deserves a medal for patience. Director Patrick Hughes’ latest is both 112 minutes, and a hodgepodge of so many other movies that it becomes the most obnoxious of cinematic collages. The signposts on this journey include the darkly comic hitman thriller, the goofy loser trying to prove himself underdog flick, the stand-up comedian vanity project, the mistaken identity plot and the violent actioner. It’s the kind of venture that only strengthens my conspiracy theory that many Netflix films are created solely to be played in the background while viewers fold laundry or vacuum the cat hair off their IKEA furniture. You could walk away from this movie every ten minutes and not miss anything when you returned.",
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

class Uncharted extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Uncharted'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/unchartedp.jpg',height: 227,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Ruben Fleischer\n WRITERS:Rafe Judkins(screenplay by)Art Marcum(screenplay by)Matt Holloway(screenplay by),\n  STARS: Tom HollandMark WahlbergAntonio Banderas.\n\n\nUncharted is a 2022 American action-adventure film directed by Ruben Fleischer from a screenplay by Rafe Lee Judkins, Art Marcum and Matt Holloway, based on the video game franchise of the same name developed by Naughty Dog and published by Sony Interactive Entertainment. It stars Tom Holland as Nathan Drake and Mark Wahlberg as Victor Sullivan, with Sophia Ali, Tati Gabrielle, and Antonio Banderas in supporting roles. In the film, Drake is recruited by Sullivan in a race against corrupt billionaire Santiago Moncada (Banderas) and mercenary leader Jo Braddock (Gabrielle) to locate the fabled treasure of the Magellan expedition. ",
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

class Morbius extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Morbius'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/morbiusp.jpeg',height: 225,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Daniel Espinosa \n WRITERS: Matt Sazama(screen story by)Burk Sharpless(screen story by) ,\n  STARS: Jared LetoMatt SmithAdria Arjona .\n\n\n Morbius is a 2022 American superhero film based on the Marvel Comics character of the same name, produced by Columbia Pictures in association with Marvel. Distributed by Sony Pictures Releasing, it is the third film in Sony's Spider-Man Universe (SSU). Directed by Daniel Espinosa and written by Matt Sazama and Burk Sharpless, it stars Jared Leto as Dr. Michael Morbius, alongside Matt Smith, Adria Arjona, Jared Harris, Al Madrigal, and Tyrese Gibson. In the film, Morbius and his surrogate brother Milo become living vampires after curing themselves of a rare blood disease."
                  "\n\n\nThere were several attempts to bring Morbius to the big screen since 1998, including joining the Blade franchise and having a solo film produced by Artisan Entertainment, neither of which ever came to fruition. After announcing plans for a new shared universe of films inspired by Spider-Man related characters beginning with Venom (2018), Sony began developing a film based on Morbius. ",
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

class Star_Wars extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Morbius'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/starp.jpg',height: 225,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: J.J. Abrams \n WRITERS: Chris Terrio(screenplay by)J.J. Abrams(screenplay by)Derek Connolly(story by),\n  STARS: Daisy RidleyJohn BoyegaOscar Isaac .\n\n\n Star Wars: The Rise of Skywalker (also known as Star Wars: Episode IX – The Rise of Skywalker) is a 2019 American epic space opera film produced, co-written, and directed by J. J. Abrams. Produced by Lucasfilm and Abrams' production company Bad Robot Productions, and distributed by Walt Disney Studios Motion Pictures, it is the third installment of the Star Wars sequel trilogy, following The Force Awakens (2015) and The Last Jedi (2017), and the final episode of the nine-part 'Skywalker saga'.[a] Its ensemble cast includes Carrie Fisher,[b] Mark Hamill, Adam Driver, Daisy Ridley, John Boyega, Oscar Isaac, Anthony Daniels, Naomi Ackie, Domhnall Gleeson, Richard E. Grant, Lupita Nyong'o, Keri Russell, Joonas Suotamo, Kelly Marie Tran, Ian McDiarmid, and Billy Dee Williams. The Rise of Skywalker follows Rey, Finn, and Poe Dameron as they lead the Resistance's final stand against Supreme Leader Kylo Ren and the First Order, who are aided by the return of the deceased Galactic Emperor, Palpatine.",
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

class Eternals extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Eternals'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 225,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Chloé Zhao \n WRITERS:Chloé Zhao(screenplay by)Patrick Burleigh(screenplay by)Ryan Firpo(screenplay by),\n  STARS: Gemma ChanRichard MaddenAngelina Jolie.\n\n\n Eternals is a 2021 American superhero film based on the Marvel Comics race of the same name. Produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures, it is the 26th film in the Marvel Cinematic Universe (MCU). The film is directed by Chloé Zhao, who wrote the screenplay with Patrick Burleigh, Ryan Firpo, and Kaz Firpo. It stars an ensemble cast including Gemma Chan, Richard Madden, Kumail Nanjiani, Lia McHugh, Brian Tyree Henry, Lauren Ridloff, Barry Keoghan, Don Lee, Harish Patel, Kit Harington, Salma Hayek, and Angelina Jolie. In the film, the Eternals, immortal alien beings, emerge from hiding after thousands of years to protect Earth from their ancient counterparts, the Deviants.",
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
    {'name': 'The Nun', 'img': 'assets/images/thenun.png'},
    {'name': 'The Conjuring', 'img': 'assets/images/thecon.png'},
    {'name': 'Sinister', 'img': 'assets/images/sinister.png'},
    {'name': 'The Ring', 'img': 'assets/images/thering.png'},
    {'name': 'The Invisible Man', 'img': 'assets/images/invisibleman.png'},
    {'name': 'The Witch', 'img': 'assets/images/witch.png'},

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

class The_Nun extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The Nun'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 190,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Corin Hardy \n WRITERS: Gary Dauberman(screenplay by)James Wan(story by),\n  STARS: Demián BichirTaissa FarmigaJonas Bloquet.\n\n\n The Nun is a 2018 American gothic supernatural horror film directed by Corin Hardy and written by Gary Dauberman, from a story by Dauberman and James Wan.[2][3] It is a spin-off/prequel of 2016's The Conjuring 2 and the fifth installment in the Conjuring Universe franchise. The film stars Demián Bichir, Taissa Farmiga and Jonas Bloquet, with Bonnie Aarons reprising her role as the Demon Nun, an incarnation of Valak, from The Conjuring 2. The plot follows a Roman Catholic priest and a nun in her novitiate as they uncover an unholy secret in 1952 Romania."
                      "\n\n\nWarner Bros. Pictures and New Line Cinema announced The Nun, a spin-off film to The Conjuring 2, which had opened five days earlier, with Safran and Wan producing. The initial script for the film was written by David Leslie Johnson. Hardy had signed on to direct The Nun with a new screenplay from Wan and Dauberman. Principal photography began in May 2017 in Bucharest, Romania, and during filming, the set was blessed by an Eastern Orthodox priest.",
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
class The_Conjuring extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The_Conjuring'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 190,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: James Wan\n WRITERS: Chad HayesCarey W. Hayes,\n  STARS:Patrick WilsonVera FarmigaRon Livingston.\n\n\nThe Conjuring is a 2013 American supernatural horror film directed by James Wan and written by Chad Hayes and Carey W. Hayes. It is the inaugural film in the Conjuring Universe franchise.[4] Patrick Wilson and Vera Farmiga star as Ed and Lorraine Warren, paranormal investigators and authors associated with prominent cases of haunting. Their purportedly real-life reports inspired The Amityville Horror story and film franchise.[5] The Warrens come to the assistance of the Perron family, who experienced increasingly disturbing events in their farmhouse in Rhode Island in 1971."
                  "\n\n\nDevelopment of the film began in January 2012, and reports confirmed Wan as the director of a film entitled The Warren Files, later retitled The Conjuring, centering on the alleged real-life exploits of Ed and Lorraine Warren, a married couple who investigated paranormal events.",
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
class Sinister extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sinister'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 190,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Scott Derrickson \n WRITERS: Scott DerricksonC. Robert Cargill,\n  STARS: Ethan HawkeJuliet RylanceJames Ransone.\n\n\n Sinister is a 2012 American supernatural horror film directed by Scott Derrickson and written by C. Robert Cargill and Derrickson. It stars Ethan Hawke as a struggling true-crime writer whose discovery of videos depicting grisly murders in his new house puts his family in danger. Juliet Rylance, Fred Thompson, James Ransone, Clare Foley, and Michael Hall D'Addario appear in supporting roles."
                  "Sinister was inspired by a nightmare Cargill had after watching the 2002 film The Ring.[5] Principal photography on Sinister began in Autumn of 2011 in Long Island, NY with a production budget of 3 million.[3] To add the authenticity of old home movies and snuff films, the Super 8 segments were shot on actual Super 8 cameras and film stock.[6] The film was a co-production between the United States, Canada, and the United Kingdom",
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
class The_Ring extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The Ring'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 190,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Gore Verbinski \n WRITERS: Ehren Kruger(screenplay)Kôji Suzuki(novel 'The Ring')Hiroshi Takahashi(1998 screenplay Ringu),\n  STARS: Naomi WattsMartin HendersonBrian Cox.\n\n\nThe Ring is a 2002 American supernatural horror film directed by Gore Verbinski from a screenplay by Ehren Kruger, starring Naomi Watts, Martin Henderson, David Dorfman, Brian Cox, and Daveigh Chase. It is a remake of Hideo Nakata's 1998 Japanese horror film Ring, based on Koji Suzuki's 1991 eponymous novel. Watts portrays a journalist who investigates a cursed videotape that seemingly kills the viewer seven days after watching it."
                      "The Ring was released theatrically on October 18, 2002, and received mostly positive reviews, with critics praising the atmosphere, visuals, and Watts's performance. The film grossed over 249 million worldwide on a 48 million production budget, making it one of the highest-grossing horror remakes. It is the first installment of the English-language Ring series, and is followed by The Ring Two (2005) and Rings (2017).",
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
class The_Invisible_Man extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The Invisible Man'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 190,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Leigh Whannell \n WRITERS: Leigh Whannell(screenplay by)H.G. Wells(novel),\n  STARS: Elisabeth MossOliver Jackson-CohenHarriet Dyer.\n\n\n The Invisible Man is a 2020 science fiction horror film written and directed by Leigh Whannell. Inspired by H. G. Wells' novel of the same name, it stars Elisabeth Moss as a woman who believes she is being stalked by her seemingly deceased ex-boyfriend (Oliver Jackson-Cohen) after he acquires the ability to become invisible. Aldis Hodge, Storm Reid, Harriet Dyer, and Michael Dorman appear in supporting roles."
                  "Development on a contemporary film adaptation of the novel began in 2006, but was halted in 2011. An attempt at reviving the project in 2016 as part of Universal Pictures' cinematic Dark Universe was also cancelled following the critical and financial failure of The Mummy in 2017. After Universal moved away from a serialized universe to standalone films, the project reentered development in 2019 with Whannell attached. ",

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
class The_Witch extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('The Witch'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Eternalsp.jpg',height: 190,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:	Robert Eggers \n WRITERS:	Robert Eggers,\n  STARS: Anya Taylor-JoyRalph InesonKate Dickie.\n\n\n The Witch (stylized as The VVitch, and subtitled A New-England Folktale) is a 2015 period supernatural horror film written and directed by Robert Eggers in his feature directorial debut. It stars Anya Taylor-Joy (in her first film appearance), Ralph Ineson, Kate Dickie, Harvey Scrimshaw, Ellie Grainger, and Lucas Dawson. Set in the 1630s, it follows a Puritan family who encounter forces of evil in the woods beyond their New England farm.\n\n\nThe Witch will scratch that itch for spooky rustic folklore and good ol’ fashioned Devil worship (which, contrary to what someone will tell you after they’ve been Wiccan for ten seconds, has historically been part of some streams of witchcraft). Plus, the film has a weird kind of happy ending, which is gorgeously shot and surprisingly feminist.",
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

class Fantasy extends StatelessWidget {
  var arrFAN= [
    {'name': 'JUMANJI:\n\t\t        THE NEXT LEVEL', 'img': 'assets/images/Jumanji.png'},
    {'name': 'NOAH', 'img': 'assets/images/noha.jpg'},
    {'name': "HARRY POTTER AND\nTHE SORCERER'S STONE", 'img': 'assets/images/hp.png'},
    {'name': 'HEREAFTER', 'img': 'assets/images/HEREAFTER.png'},
    {'name': 'ALADDIN', 'img': 'assets/images/ALADDIN.png'},
    {'name': 'THE\nNUTCRACKER', 'img': 'assets/images/nut.png'},

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
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                    if(index==0)
                      {
                        return JUMANJI();
                      }
                    else if(index==1)
                      {
                        return NOAH();
                      }
                    else if(index==2)
                      {
                        return HARRY();
                      }
                    else if(index==3)
                      {
                        return HEREAFTER();
                      }
                    else if(index==4)
                      {
                        return ALADDIN();
                      }
                    else
                      {
                        return THE_NUTCRACKER();
                      }
                    }
                    ));
                  },
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
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown
                            ),),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          },
          itemCount: arrFAN.length,
        ));
  }
}


class JUMANJI extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('JUMANJI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Jumanjip.jpg',height: 227,width: double.infinity,)),
              SizedBox(height: 8,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Jake Kasdan\n WRITERS: Jake KasdanJeff PinknerScott Rosenberg	,\n  STARS: Dwayne JohnsonJack BlackKevin Hart.\n\n\n Jumanji: The Next Level is a 2019 American fantasy adventure comedy film directed by Jake Kasdan and co-written by Jeff Pinkner, and Scott Rosenberg. It is a sequel to 2017's Jumanji: Welcome to the Jungle, the second follow-up to 1995's Jumanji, and is the fourth installment in the Jumanji franchise. It stars Dwayne Johnson, Jack Black, Kevin Hart, Karen Gillan, Nick Jonas, Alex Wolff, Morgan Turner, Ser'Darius Blain, and Madison Iseman reprising their roles from the previous film while Awkwafina, Rory McCann, Danny Glover, and Danny DeVito also join the cast. The film's plot takes place two years after Welcome to the Jungle, in which the same group of teenagers, along with an old friend and two unwitting additions, become trapped in Jumanji once again. There, they all find themselves facing new problems and challenges with both old and new avatars while having to save the land from a new villain to escape.",
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
class NOAH extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('NOAH'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/nohap.jpeg',height: 145,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Darren Aronofsky	\n WRITERS: Darren AronofskyAri Handel,\n  STARS: Russell CroweJennifer ConnellyAnthony Hopkins .\n\n\n Noah is a 2014 American epic biblical drama film directed by Darren Aronofsky, who co-wrote the screenplay with Ari Handel. Inspired by the biblical story of Noah's Ark from the Book of Genesis and the Book of Enoch,[4] it stars Russell Crowe as Noah, along with Jennifer Connelly, Ray Winstone, Emma Watson, Logan Lerman, and Anthony Hopkins. Noah had its world premiere in Mexico City on March 10, 2014.[51] In North America, the film grossed a little over 43.7 million during its opening weekend—more than any of Aronofsky's previous films—and debuted in first place at the box office—a first for Aronofsky.[52] The opening weekend was also the biggest ever for a film featuring Russell Crowe as the lead actor ",
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
class HARRY extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HARRY POTTER AND THE SORCERER STONE'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/harryp.jpg',height: 210,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Chris Columbus	\n WRITERS: J.K. Rowling(novel)Steve Kloves(screenplay)	,\n  STARS: Daniel RadcliffeRupert GrintRichard Harris .\n\n\n Harry Potter and the Philosopher's Stone (released in the United States, India and the Philippines as Harry Potter and the Sorcerer's Stone) is a 2001 fantasy film directed by Chris Columbus and distributed by Warner Bros. Pictures, based on J. K. Rowling's 1997 novel of the same name. Produced by David Heyman and screenplay by Steve Kloves, it is the first instalment of the Harry Potter film series. The film stars Daniel Radcliffe as Harry Potter, with Rupert Grint as Ron Weasley, and Emma Watson as Hermione Granger. Its story follows Harry's first year at Hogwarts School of Witchcraft and Wizardry as he discovers that he is a famous wizard and begins his formal wizarding education.",
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
class HEREAFTER extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HEREAFTER'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/hereafterp.jpeg',height: 140,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Clint Eastwood	\n WRITERS: Peter Morgan,\n  STARS: Matt DamonCécile de FranceBryce Dallas Howard.\n\n\n Hereafter is a 2010 American fantasy disaster drama film directed, co-produced, and scored by Clint Eastwood from a screenplay written by Peter Morgan. The film tells three parallel stories about three people affected by death in similar ways—all three have issues of communicating with the dead; Matt Damon plays American factory worker George, who is able to communicate with the dead and who has worked professionally as a clairvoyant, but no longer wants to communicate with the dead; Cécile de France plays French television journalist Marie, who survives a near-death experience during the 2004 Indian Ocean tsunami; and British schoolboy Marcus (played by Frankie and George McLaren), who loses the person closest to him. Bryce Dallas Howard, Lyndsey Marshal, Jay Mohr, and Thierry Neuvic have supporting roles.",
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
class ALADDIN extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ALADDIN'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/aladdinp.jpeg',height: 225,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR: Guy Ritchie	\n WRITERS: John August(screenplay by)Guy Ritchie(screenplay by),\n  STARS: Will Smith Mena Massoud Naomi Scott.\n\n\n Aladdin is a 2019 American musical fantasy film produced by Walt Disney Pictures. Directed by Guy Ritchie, from a script he co-wrote with John August, it is a live-action adaptation of Disney's 1992 animated film of the same name, which itself is based on the eponymous tale from One Thousand and One Nights.[1][a] The film stars Will Smith with Mena Massoud, Naomi Scott, Marwan Kenzari, Navid Negahban, Nasim Pedrad and Billy Magnussen. The plot follows Aladdin, a street urchin, as he falls in love with Princess Jasmine, befriends a wish-granting Genie, and battles the wicked sorcerer Jafar.",
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
class THE_NUTCRACKER extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('THE NUTCRACKER'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                  elevation: 7,
                  color: Colors.grey,
                  child: Image.asset('assets/images/Nutcrackerp.jpg',height: 215,width: double.infinity,)),
              SizedBox(height: 5,),
              Container(
                color: Colors.white12,
                height: 650,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(" DIRECTOR:Lasse Hallström Joe Johnston	\n WRITERS:	Ashleigh Powell E.T.A. Hoffmann,\n  STARS: Mackenzie Foy Keira Knightley Morgan Freeman.\n\n\n The Nutcracker and the Four Realms is a 2018 American fantasy adventure film directed by Lasse Hallström and Joe Johnston based on a screenplay by Ashleigh Powell. It is a retelling of E. T. A. Hoffmann's 1816 short story 'The Nutcracker and the Mouse King' and Marius Petipa's and Pyotr Ilyich Tchaikovsky's 1892 ballet The Nutcracker, about a young girl who is gifted a locked egg from her deceased mother and sets out in a magical land to retrieve the key. The film stars Keira Knightley, Mackenzie Foy, Eugenio Derbez, Matthew Macfadyen, Richard E. Grant, Misty Copeland, Helen Mirren, and Morgan Freeman.",
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