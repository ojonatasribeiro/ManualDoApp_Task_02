import 'package:flutter/material.dart';
import 'package:task_02/details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.amber,
        width: double.infinity,
        height: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Text.rich(
            TextSpan(children: [
              TextSpan(text: 'Here we have a '),
              TextSpan(
                text: 'Scaffold.\n',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: 'First you we have the '),
              TextSpan(
                text: 'AppBar\n',
                style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(text: 'right bellow we have the '),
              TextSpan(
                text: 'Container.',
                style: TextStyle(
                  color: Colors.amber,
                  backgroundColor: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ]),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: const Text(
              'Open Detail Page!',
              style: TextStyle(color: Colors.green),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const DetailsPage();
                }),
              );
            },
          ),
          const Text.rich(
            TextSpan(children: [
              TextSpan(
                  text: 'The Elevated button above uses Navigator class,\n'),
              TextSpan(text: 'with the '),
              TextSpan(
                  text: 'push function ',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: 'after you click,\n'),
              TextSpan(text: ' to change from this page to another page.'),
            ]),
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}
