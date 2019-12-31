import 'package:flutter/material.dart';
import 'package:movieapp/details.dart';
class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
                                 padding: const EdgeInsets.all(10.0),
                                        child: Column(
                                          
                  children: <Widget>[
                    
                      Card(

                        elevation: 10.0,
                        child : InkWell(
                          onTap:(){
                        
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Details()),
                              );},
                         
                                              child: Container(
                                                                          height: 200,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('assets/spiderman.jpg') 
                            )
                          ),
                        ),
                        ),

                      ),
                      SizedBox(height: 10.0,),
                      Text('SpiderMan', style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                  ],
                ),
                   );

          

                                                            
  }
}