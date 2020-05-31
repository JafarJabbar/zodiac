import 'package:flutter/material.dart';
import 'package:zodiac/ui/ZodiacDetails.dart';
import 'ui/ZodiacList.dart';

void main(){
  runApp(
    new MaterialApp(
      initialRoute: '/zodiac/list',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink
    ),
      routes: {
        '/' : (context)=>ZodiacList(),
        '/list' : (context)=>ZodiacList(),
      },
      onGenerateRoute: (RouteSettings settings){
        List<String> routeList=settings.name.split('/');
        if(routeList[1]=='detail'){
          return MaterialPageRoute(builder: (context)=>ZodiacDetails(int.parse(routeList[2])));
        }
        return null;
      },
    )
  );
}