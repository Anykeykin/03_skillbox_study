// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:import_sorter/sort.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Flutter Dmo Hello'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('1 Задание'),
            SvgPicture.network(
              'https://www.svgrepo.com/show/2046/dog.svg',
            ),
            Padding(padding: EdgeInsets.all(20.0)),
            Text('2 Задание'),
            CarouselSlider(
                items: [
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text('hello'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('my'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('great'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text('friend'),
                  ),
                ],
                options: CarouselOptions(
                  autoPlay: true,
                ))
          ],
        ),
      ),
    );
  }
}
