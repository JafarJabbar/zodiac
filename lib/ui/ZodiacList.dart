import 'package:flutter/material.dart';
import 'package:zodiac/models/ZodiacClass.dart';
import 'package:zodiac/utils/strings.dart';

class ZodiacList extends StatelessWidget {
  static List<ZodiacClass> allZodiacs;

  @override
  Widget build(BuildContext context) {
    allZodiacs = dataSource();
    return (Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("Zodiac"),
      ),
      body: zodiacWidget(),
    ));
  }

  List<ZodiacClass> dataSource() {
    List<ZodiacClass> zodiacs = [];
    for (int i = 0; i < 12; i++) {
      String smallImage = Strings.ZODIAC_NAME[i].toLowerCase() + "${i + 1}.png";
      String bigImage =
          Strings.ZODIAC_NAME[i].toLowerCase() + "_buyuk" + "${i + 1}.png";
      ZodiacClass currentZodiac = ZodiacClass(
          Strings.ZODIAC_NAME[i],
          Strings.ZODIAC_DATES[i],
          Strings.ZODIAC_DETAILS[i],
          smallImage,
          bigImage);
      zodiacs.add(currentZodiac);
    }
    return zodiacs;
  }

  Widget zodiacWidget() {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, int index) {
        return listOfZodiacs(ctx, index);
      },
      itemCount: allZodiacs.length,
    );
  }

  Widget listOfZodiacs(BuildContext ctx, int index) {
    ZodiacClass currentZodiac = allZodiacs[index];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: (Card(
        elevation: 4,
        child: ListTile(
          onTap: ()=>Navigator.pushNamed(ctx, '/detail/$index'),
          leading: Image.asset(
            'images/${currentZodiac.zodiacSmallPictur}',
            width: 64,
            height: 64,
          ),
          title: Text(
            currentZodiac.zodiacName,
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 24),
          ),
          subtitle: Text(
            currentZodiac.zodiacDate,
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      )),
    );
  }
}
