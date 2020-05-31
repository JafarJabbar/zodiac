import 'package:flutter/material.dart';
import 'package:zodiac/ui/ZodiacList.dart';
import 'package:zodiac/utils/strings.dart';

class ZodiacDetails extends StatelessWidget {
  int selectedIndex;

  ZodiacDetails(this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade50,
      body:CustomScrollView(
        primary: false,
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            centerTitle: true,
            expandedHeight: 500 ,
            backgroundColor: Colors.pink,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset('images/${ZodiacList.allZodiacs[selectedIndex].zodiacBigPicture}'),
              title: Text(ZodiacList.allZodiacs[selectedIndex].zodiacName+" zodiac features"),
            ),
          ),

          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Text(
                  ZodiacList.allZodiacs[selectedIndex].zodiacDate,
                style: TextStyle(color: Colors.blueGrey),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
                padding: EdgeInsets.all(10),
                child: Divider()
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(10),
              child: Text(
                  ZodiacList.allZodiacs[selectedIndex].zodiacDetails
              ),
            ),
          )
        ],
      ),
    );
  }
}
