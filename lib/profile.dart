import 'package:flutter/material.dart';
import 'listbox.dart';

class Profile extends StatelessWidget {
const Profile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Material(
      
      child: SingleChildScrollView(
        padding: EdgeInsets.all(32.0),
        child:Column(
            children: const <Widget>[
              SizedBox(width: 0.0, height: 20.0),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('assets/icon.png'),
              ),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
              SizedBox(width: 0.0, height: 20.0),
              Listbox(),
            ],
          )
      )
      
    );
    
    
  }
}