import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('Move Details'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Column(
          children: <Widget>[
            Center(
                        child: Card(
                elevation: 5,
                child: Container(
                  height: 370,
                  width: 270,


                  decoration: BoxDecoration(
                    
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: ExactAssetImage('assets/spide.jpg'))
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Text('Spider Man', style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,letterSpacing: 1.2),),
                      SizedBox(height: 20,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                        Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child:Column(
                              children: <Widget>[
                                Icon(
                                  Icons.timer,
                                  size: 45,
                                  color:  Theme.of(context).primaryColor,
                                ),
                                SizedBox(height: 10,),
                                Text('200 min' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child:Column(
                              children: <Widget>[
                                Icon(
                                  Icons.calendar_today,
                                  size: 45,
                                  color:  Theme.of(context).primaryColor,
                                ),
                                SizedBox(height: 10,),
                                Text('2020' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation: 5,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                            child:Column(
                              children: <Widget>[
                                Icon(
                                  Icons.star_border,
                                  size: 45,
                                  color:  Theme.of(context).primaryColor,
                                ),
                                SizedBox(height: 10,),
                                Text('7.1/10' , style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),)
                              ],
                            ),
                          ),
                        ),
                      ],
                      ),
                      SizedBox(height: 20,),
                      Text(' a film made from The Amazing Spider-Man television series finale "The Chinese Web" using the same method used to make Spider-Man Strikes Back was released as Spider-Man'
                      ,style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,height: 1.5,),textAlign: TextAlign.center,),



          ],
        ),
      ),
      bottomNavigationBar: Row(
        children: <Widget>[
          Expanded(
            child:InkWell(
              
                      child: RaisedButton(
                        padding:  const EdgeInsets.only(top: 20,bottom: 20),
                        
              onPressed: (){
                    launch('https://www.youtube.com/watch?v=U0D3AOldjMUl');
              },
              color: Colors.deepPurple,
              textColor: Colors.white,
                
                              child: Row(
                                
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(
                      
                      
                      Icons.play_circle_outline ,
                    
                    ),
                    Text('Watch Trailer' , style: TextStyle(fontSize: 18),)
                  ],
                ),
              

            ),
            ),
          ),
          Expanded(
                      child: RaisedButton(
                        
                        padding:  const EdgeInsets.only(top: 20,bottom: 20),
              onPressed: (){

              },
              color: Colors.yellow,
              textColor: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(Icons.check_circle_outline),
                  Text('Buy Now' , style: TextStyle(fontSize: 18),)
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}