import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Listbox extends StatelessWidget {
  const Listbox({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
  
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [BoxShadow(
              offset: Offset(0, 5),
              spreadRadius: 2,
              blurRadius: 10,
              color: Colors.orange.withOpacity(0.3)
            )]),
        child: (
          ListTile(
          title:  Text("Profile"),
          subtitle: const Text('Update your information'),
          leading: Icon(CupertinoIcons.person),
          trailing: Icon(Icons.forward),
          tileColor: Colors.white,
        )
        )
        );
  }
}
