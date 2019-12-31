import 'package:flutter/material.dart';
import 'horozontallist.dart';
import './vertical.dart';

class ListImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text('movie app'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: (){},
          )
        ],
      ),
      body:
          SingleChildScrollView(
                      child: Column(
        children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Recommend" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  FlatButton(
                    child: Text('view all'),
                    onPressed: (){},
                  )
                ],
              ),
            ),
            Container(
              
                          padding: const EdgeInsets.all(10.0),

              height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[

Horizontal(),
Horizontal(),
Horizontal(),
Horizontal(),
Horizontal(),
Horizontal(),
Horizontal(),
Horizontal(),


                ],
              ),
            ),
            SizedBox(height: 30,),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Favorite Movies 2019" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                  FlatButton(
                    child: Text('view all'),
                    onPressed: (){},
                  )
                ],
              ),
            ),
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: <Widget>[
                 Vertical(),
                                  Vertical(),
                 Vertical(),
                 Vertical(),
                 Vertical(),

                ],
              ),


            )
        ],
      ),
          )
       
      
    );
  }

  }

