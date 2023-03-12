import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/constants.dart';

class PlantDetail extends StatelessWidget {
const PlantDetail({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    var size = MediaQuery.of(context).size;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.8,
              child: Row(
              children: <Widget>[
            
                Expanded(child: Padding(
                  padding: EdgeInsets.only(top:60),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          alignment: Alignment.center,
                          width: 52,
                          height: 52,
                          decoration: BoxDecoration(
                              // color: Color.fromARGB(255, 61, 217, 113),
                              // shape: BoxShape.circle
                              ),
                          child: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        ),
                      ),
                      SizedBox(width: 0.0, height: 60.0),
                      IconCard(size: size),
                       IconCard(size: size),
                        IconCard(size: size),
                         IconCard(size: size),
                         
                        
                          
                          
                    ],
                  ),
                )),
                Container(
                 height: size.height * 0.8,
                 width:size.width * 0.75,
                 
                  decoration: BoxDecoration(
                     boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 60),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    ),
                  ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(63),
                      bottomLeft: Radius.circular(60)
                    ),
                   
                     image: DecorationImage(
                      alignment: Alignment.centerLeft,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/img.png'),
                ),
                  ),
                ),
                
      
            
              ],
                    ),
            ),
             TitlePrice(),
             Row(
               children: [
                 SizedBox(
                   width: size.width / 2,
                   height: 84,
                   child:  TextButton(
          style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20)
                          ),
                          side: BorderSide(color: kPrimaryColor)))),
          onPressed: () {},
          child: Text(
            "Buy Now",
            style: TextStyle(color: Colors.white),
          ),
        ),
                   ),
                   Expanded(child: TextButton(
        
          onPressed: () {},
          child: Text(
            "Description",
            style:TextStyle(
              color: Colors.black
            )
          ),
        ),)
               ],
             ),
              //  Expanded()
             
                         
            ]
        ),
      ),
    );
  }
}

class TitlePrice extends StatelessWidget {
  const TitlePrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: <Widget>[
           RichText(
               text: TextSpan(children: [
             TextSpan(
                 text: "Samantha\n",
                 style: TextStyle(
                     fontSize: 28,
                     fontWeight: FontWeight.w700,
                     color: Colors.black)),
             TextSpan(
                 text: "Low cost",
                 style: TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w400,
                   color: kPrimaryColor.withOpacity(0.8),
                 ))
           ])),
           Spacer(),
           Text('\$400',
               style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.w700,
                   color: kPrimaryColor)),
         ],
       ),
    );
  }
}

class IconCard extends StatelessWidget {
  const IconCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height *.03,),
      padding: EdgeInsets.all(kDefaultPadding/2),
        alignment: Alignment.center,
        width: 62,
        height:62,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
           boxShadow: [
        BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 22,
          color: kPrimaryColor.withOpacity(0.23),
        ),
         BoxShadow(
          offset: Offset(-15, 15),
          blurRadius: 22,
          color: kPrimaryColor.withOpacity(0.23),
        ),
      ],
            // color: Color.fromARGB(255, 61, 217, 113),
            // shape: BoxShape.circle
            ),
        child: SvgPicture.asset('assets/icons/sun.svg'),
      );
  }
}