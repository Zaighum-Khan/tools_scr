import 'package:flutter/material.dart';
import 'items.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(92, 155, 187, 1),
          title: Row(
            children: [
              Text(
                "Tools",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Appbody(),
      ),
    );
  }
}

class Appbody extends StatelessWidget {
  const Appbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(8.0),
      child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: 1.0),
          itemBuilder: (context, index) {
            final item = items[index];
            return GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        item.icon,
                        size: 50,
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Text('${item.title}'),
                    ],
                  ),
                ),
              ),
            );
          }),
    ));
  }
}
