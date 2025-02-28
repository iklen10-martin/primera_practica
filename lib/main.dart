import 'package:flutter/material.dart';
import 'package:my_app/pages/home_page.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { 
    return MaterialApp(
      title: 'Pokédex App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Pokédex'),
        ),
        body: const HomePage(),
      ),
      builder: (context, child) => ResponsiveWrapper.builder( 
        child,
        maxWidth: 1200, 
        minWidth: 480,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.resize(480, name: MOBILE),
          ResponsiveBreakpoint.autoScale(800, name: TABLET),
          ResponsiveBreakpoint.resize(1000, name: DESKTOP),
        ],
        // background: Container(
        //   color: Color(0xFFF5F5F5),
        // ),
      ),
      initialRoute: "/",
    );
  }
}
