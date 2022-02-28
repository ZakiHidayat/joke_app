import 'package:flutter/material.dart';
import 'package:joke_app/joke.dart';
import 'halaman_detailjoke.dart';

// class HalamanListJoke extends StatefulWidget {
//   late final Joke pilihanjoke;
//   late final ValueChanged<Joke> pilihanJokeCallback;
//
//   HalamanListJoke(
//       {required Key key,
//       required this.pilihanJokeCallback,
//       required this.pilihanjoke})
//       : super(key: key);
//
//   @override
//   _HalamanListJokeState createState() => _HalamanListJokeState();
// }
//
// class _HalamanListJokeState extends State<HalamanListJoke> {
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: jokelist.map((jokes) {
//         return Container(
//           child: ListTile(
//             title: Text(
//               jokes.setup,
//               style: TextStyle(color: Colors.black),
//             ),
//             onTap: () => widget.pilihanJokeCallback(jokes),
//             selected: widget.pilihanjoke == jokes,
//           ),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(5),
//               shape: BoxShape.rectangle),
//         );
//       }).toList(),
//     );
//   }
// }

class Listjoke extends StatelessWidget {
  const Listjoke({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('bla'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          late final Joke candaan = jokelist[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return HalamanDetailJoke(joke: candaan,);
                },));
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1, child: Text(candaan.type),
                  ),
                  // Expanded(
                  //   flex: 2, child: Text(candaan.setup),
                  // ),
                  // Expanded(
                  //   flex: 3, child: Text(candaan.punchline),
                  // ),
                ],
              ),
            ),
          );
        }, itemCount: jokelist.length,
      ),
    );
  }
}
