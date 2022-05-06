import 'package:flutter/material.dart';

class MaintananceBlack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List shortcutList = [
      "Aloyise",
      "Febin",
      "Antony",
      "Akhil",
      "Allen",
      "Nathalie",
      "Odette",
      "Pamela",
      "Quinn",
      "Ruthie",
      "Samantha",
      "Tiffany",
      "Ursula",
      "Verna",
      "Wendy",
      "Xena",
      "Yolanda",
      "Zoe"
    ];
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 50,
          ),
          // SizedBox(
          //   height: 10,
          // ),

          const Text(
            'For New Connection',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 20,
          ),
          FloatingActionButton(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            alignment: Alignment.topLeft,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Recently Saved Gym Buddies',
                textScaleFactor: 1.15,
                textAlign: TextAlign.left,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 550,
            child: Center(
              child: ListView.builder(
                itemBuilder: ((context, index) => Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue,
                          child: Text('$index'),
                        ),
                        title: Text(shortcutList[index]),
                      ),
                    )),
                itemCount: shortcutList.length,
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
