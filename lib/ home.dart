import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'bottom_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            width: size.width * 1,
            decoration: BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/undraw_pilates_gpdb.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Color(0xFFF2BEA1), shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ), 
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text('Good Morning \n Sathish',
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF222B45),
                          fontSize: 40)),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: 30,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30.0,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'search',
                        icon: SvgPicture.asset('assets/icons/search.svg'),
                        border: InputBorder.none),
                  ),
                ),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 0.85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: [
                        HomeCategory(
                            title: "Diet ",
                            svgSrc: "assets/icons/Hamburger.svg"),
                        HomeCategory(
                            title: "Kegal Excercises",
                            svgSrc: "assets/icons/Excrecises.svg"),
                        HomeCategory(
                            title: "Kegal Excercises",
                            svgSrc: "assets/icons/Excrecises.svg"),
                        HomeCategory(
                            title: "Medidation",
                            svgSrc: "assets/icons/Meditation.svg")
                      ]),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}


class HomeCategory extends StatelessWidget {
  final String svgSrc;
  final String title;
  const HomeCategory({
    super.key,
    required this.svgSrc,
    required this.title,
    // this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(20),
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16)),
        child: Column(children: <Widget>[
          // Spacer(),
          SvgPicture.asset(svgSrc),
          // Spacer(),
          SizedBox(
            height: 16,
          ),
          Spacer(),
          Text(title,
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Color(0xFF222B45),
                  fontSize: 16))
        ]));
  }
}
