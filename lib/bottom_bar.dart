import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
      color:Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          bottom_nav_bar(
            title:'Home',
            SvgSrc: 'assets/icons/calendar.svg',
          ),
           bottom_nav_bar(
            title:'Cart',
            SvgSrc: 'assets/icons/gym.svg',
            isActive:true
          ),
           bottom_nav_bar(
            title:'Settings',
            SvgSrc: 'assets/icons/Settings.svg',
          ),
    
        ],
      ),
    );
  }
}

class bottom_nav_bar extends StatelessWidget {
  final String title;
  final String SvgSrc;
  final bool isActive;
  const bottom_nav_bar({
    super.key,
    required this.title,
   required this.SvgSrc,
   this.isActive = false
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Column(
        children: <Widget>[
          SvgPicture.asset(SvgSrc,color:isActive?Color(0xFFE68342):Color(0xFF222B45)),
           Text(title)
        ],
      ),
    );
  }
}