import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details page'),
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        color: Colors.green,
        width: double.infinity,
        height: double.infinity,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Here we have the same construction,\n'),
                TextSpan(text: 'but as we are in the second stack slot,\n'),
                TextSpan(text: 'and are testing in an '),
                TextSpan(
                  text: 'Android device',
                  style: TextStyle(
                    color: Colors.green,
                    backgroundColor: Colors.amber,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                    text:
                        ' the system UI provides a back button in the AppBar\n'),
                TextSpan(text: 'to go back to the previous page.'),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: const Text(
              'Go back to Home Page!',
              style: TextStyle(color: Colors.amber),
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(
                    text: 'in this case, when we click the elevated button,\n'),
                TextSpan(text: 'still using Navigator, but now with the '),
                TextSpan(
                  text: 'pop function',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: ', that remove the last entry in the stack,\n'),
                TextSpan(text: 'changing back to the previous screen.'),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ]),
      ),
    );
  }
}
