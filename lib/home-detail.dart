import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'bottom_bar.dart';

class HomeDetail extends StatefulWidget {
  const HomeDetail({Key? key}) : super(key: key);

  @override
  _HomeDetailState createState() => _HomeDetailState();
}

class _HomeDetailState extends State<HomeDetail> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: BottomBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.5,
            width: size.width * 1,
            decoration: BoxDecoration(
              color: Color(0xFFC7B8F5),
              image: DecorationImage(
                  alignment: Alignment.centerLeft,
                  image: AssetImage("assets/images/meditation_bg.png"),
                  fit: BoxFit.fitWidth),
            ),
          ),
          SafeArea(
              child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('Meditation',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF222B45),
                            fontSize: 55)),
                  ),
                  SizedBox(width: 0.0, height: 10.0),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text('3-10 MIN Course',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF222B45),
                            fontSize: 16)),
                  ),
                  SizedBox(width: 0.0, height: 10.0),
                  SizedBox(
                    width: size.width * .6, // it just take 60% of total width
                    child: Text(
                      "Live happier and healthier by learning the fundamentals of meditation and mindfulness",
                    ),
                  ),
                  SizedBox(
                      width: size.width * .6, // it just take 60% of total width
                      child: SearchBar()),
                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: [
                      SeasonCard(),
                      SeasonCard(),
                      SeasonCard(),
                      SeasonCard(),
                      SeasonCard(),
                      SeasonCard(),
                    ],
                  ),
                  SizedBox(width: 0.0, height: 10.0),
                  Text("Medidation",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          color: Color(0xFF222B45),
                          fontSize: 18)),
                  ListBox(),
                  ListBox(),
                  ListBox(),
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}

class ListBox extends StatelessWidget {
  const ListBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      margin: EdgeInsets.symmetric(
        vertical: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 17),
                blurRadius: 23,
                spreadRadius: -13,
                color: Color(0xFFE6E6E6))
          ]),
      child: Row(
        children: <Widget>[
          SvgPicture.asset("assets/icons/Meditation_women_small.svg"),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Basic 2",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF222B45),
                      fontSize: 16)),
              Text("Start your deepen you practice",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF222B45),
                      fontSize: 13))
            ],
          )),
          Padding(
            padding: EdgeInsets.all(10),
            child: SvgPicture.asset("assets/icons/Lock.svg"),
          )
        ],
      ),
    );
  }
}

class SeasonCard extends StatelessWidget {
  const SeasonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(13),
        child: Container(
          width: constraint.maxWidth / 2 - 10,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 17),
                    blurRadius: 23,
                    spreadRadius: -13,
                    color: Color(0xFFE6E6E6))
              ]),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 42,
                      height: 42,
                      decoration: BoxDecoration(
                          color: Color(0xFF817DC0), shape: BoxShape.circle),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    const Text('Season 1')
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });
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
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(25)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'search',
            icon: SvgPicture.asset('assets/icons/search.svg'),
            border: InputBorder.none),
      ),
    );
  }
}
