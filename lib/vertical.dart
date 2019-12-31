import 'package:flutter/material.dart';
import 'package:movieapp/details.dart';

class Vertical extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
                    children: <Widget>[
                      Card(
                        elevation: 5,
                        child: Row(
                          children: <Widget>[
                            Container(
                              child: InkWell(
                                              onTap: () {
                                         
                                              Navigator.push(
                                                context,
                      MaterialPageRoute(builder: (context) =>Details()),
                                                                  );   }
                                                      ),
                              
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(5),
                                  topLeft: Radius.circular(5),

                                ),

                                image:  DecorationImage(
                                  fit: BoxFit.cover,
                                  image: ExactAssetImage('assets/spiderman.jpg'))
                              ),
                            ),
                            Container(

                              padding: const EdgeInsets.all(10),
                              height: 150,
                              child:  Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text('spider man',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(height: 10,),
                                    Container(
                                      width: 240,
                                      
                                      child: Text('In 1981, a film made from The Amazing Spider-Man television series finale "The Chinese Web" using the same method used to make Spider-Man Strikes Back was released as Spider-Man'))

                                  ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  );
  }
}