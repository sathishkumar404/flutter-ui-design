import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image:DecorationImage(image: AssetImage('assets/register.png'),
        fit:BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body:Stack(
          children: [
            Container(
              padding: EdgeInsets.only(left:35,top:15),
              child: const Text('Create Account',
              style:TextStyle(fontSize: 55,color:Colors.white)),
            ),
            Container(
              padding: EdgeInsets.only(top:MediaQuery.of(context).size.height * 0.3,left:35,right:35),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      hintText: "First Name ",
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                    
                  ),
                  SizedBox(
                    height: 20,
                  ),
                   TextField(
                    decoration: InputDecoration(
                      hintText: "Last Name",
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                   ),
                   SizedBox(width: 0.0, height: 20.0),
                    TextField(
                    decoration: InputDecoration(
                      hintText: "Phone Number",
                      filled: true,
                      fillColor: Colors.grey.shade100,
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25)
                      )
                    ),
                   ),

                   SizedBox(
                     height: 20.0,
                   ),
                   Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                      TextButton(onPressed: (){
                        Navigator.pushNamed(context, 'login');
                      }, child:const Text('SignIn', 
                      style: TextStyle(
                        color: Colors.white,
                                    fontSize: 16, fontWeight: FontWeight.w700),
                              ) )
                      ,
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.black,
                                child: IconButton(
                                  color:Colors.white,
                                  onPressed: (){
                                    Navigator.pushNamed(context,'profile');
                                }, icon: Icon(Icons.arrow_forward)),
                              )
                     

                     ],
                   )
                
                ],
              ),
            )

          ],
        )
      )
    );
  }
}