import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardWidget extends StatelessWidget {
const CardWidget({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return   Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Card(
          elevation: 50,
          shadowColor: Colors.amberAccent,
          color: Colors.greenAccent[400],
          child: SizedBox(width: 300, height: 450.0,child: Padding(padding: EdgeInsets.all(16),child: Column(
            children: [
               CircleAvatar(
                    backgroundColor: Colors.green[300],
                    radius: 108,
                    child: Text(
                      "50% Offer ",
                      style: TextStyle(
                          fontSize: 100,
                          fontWeight: FontWeight.bold,
                          color: Colors.green[900]),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ), 
                   Text('Grab offer',
                   style: TextStyle(
                      fontSize: 20,
                      color: Colors.green[900],
                      fontWeight: FontWeight.w500,
                    )),
                    SizedBox(width: 0.0, height: 10.0),
                    Text(
                    'C++ is a general purpose programing language and widely used now a days for competitive programming.It has imperative, object-oriented and generic programming features.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.green[900],
                    ), //Textstyle
                  ),
                  SizedBox(width: 120.0,child: ElevatedButton(
                    child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            Icon(Icons.touch_app),
                            Text('Buy Now'),
                          ],
                        ), //Row
                      ),
                    onPressed: () {},
                  ),)

            ],
          ),),),

         
        ),
      );
  }
}