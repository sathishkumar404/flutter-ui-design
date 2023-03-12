import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_app/bottom_bar.dart';
import 'constants.dart';

class PlantHome extends StatefulWidget {
  const PlantHome({Key? key}) : super(key: key);

  @override
  _PlantHomeState createState() => _PlantHomeState();
}

class _PlantHomeState extends State<PlantHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // bottomNavigationBar: BottomBar(),
      body: Stack(children: [
        Container(
          height: size.height * 0.30,
          width: size.width * 1,
          decoration: const BoxDecoration(
              color: Color(0xFF0C9869),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(36),
                  bottomRight: Radius.circular(36))),
        ),
        SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    alignment: Alignment.center,
                    width: 52,
                    height: 52,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 61, 217, 113),
                        shape: BoxShape.circle),
                    child: SvgPicture.asset('assets/icons/menu.svg'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Hi Uishopy!',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    Image.asset("assets/images/logo.png")
                  ],
                ),
                SizedBox(
                  height: 10.0,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    height: 54,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 10),
                          blurRadius: 50,
                          color: kPrimaryColor.withOpacity(0.23),
                        ),
                      ],
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          child: TextField(
                            onChanged: (value) {},
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: kPrimaryColor.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              // surffix isn't working properly  with SVG
                              // thats why we use row
                              // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                            ),
                          ),
                        ),
                        SvgPicture.asset("assets/icons/search.svg"),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                TitleWidget(),
                SizedBox(
                  height: 18,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      CardList(size: size),
                        CardList(size: size),
                          CardList(size: size)
                    ],
                  ),
                ),
                TitleWidget(),
                SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      thumbnail(size: size),
                      thumbnail(size: size),
                      thumbnail(size: size)
                    ],
                  ),
                )
              ],
            ),
          ),
        ))
      ]),
    );
  }
}

class thumbnail extends StatelessWidget {
  const thumbnail({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        margin: EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding /2 ,
        ),
        width: size.width * 0.8,
        // height: 180,
        child: Column(
          children: <Widget>[
            
            Container(
              height: 180,
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
               
                 image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/bottom_img_1.png'),
            ),
              ),
              
            )
          ],
        ),
      ),
    );
  }
}

class CardList extends StatelessWidget {
  const CardList({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset('assets/images/image_1.png'),
          Container(
            padding: EdgeInsets.all(kDefaultPadding / 2),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: "Samantha\n",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  TextSpan(
                      text: "Low cost",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w100,
                        color: kPrimaryColor.withOpacity(0.8),
                      ))
                ])),
                Spacer(),
                Text('400 INR',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: kPrimaryColor)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Text('Recommend',
            style: TextStyle(
                fontWeight: FontWeight.w900,
                color: Color(0xFF222B45),
                fontSize: 28)),
        Spacer(),
        TextButton(
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: kPrimaryColor)))),
          onPressed: () {},
          child: Text(
            "More",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 30,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 30.0,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          offset: Offset(0, 10),
          blurRadius: 50,
          color: Color(0xFF0C9869).withOpacity(0.23),
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'search',
          icon: SvgPicture.asset('assets/icons/search.svg'),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
        ),
      ),
    );
  }
}
