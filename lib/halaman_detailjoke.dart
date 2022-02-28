import 'package:flutter/material.dart';
import 'package:joke_app/joke.dart';

class HalamanDetailJoke extends StatelessWidget {
  late final Joke joke;
  HalamanDetailJoke({required this.joke});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ikk'),
      ),
      body: Column(
        children: [
          Center(
            child:
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(joke.setup),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Text(joke.punchline),
            ),
          ),
        ],
      ),
    );
  }
}

// class HalamanDetailJoke extends StatefulWidget {
//   late final bool cekDevideLayout;
//   late final Joke joke;
//
//   HalamanDetailJoke(
//       {required Key key, required this.cekDevideLayout, required this.joke})
//       : super(key: key);
//
//   @override
//   _HalamanDetailJokeState createState() => _HalamanDetailJokeState();
// }
//
// class _HalamanDetailJokeState extends State<HalamanDetailJoke> {
//   @override
//   Widget build(BuildContext context) {
//     Widget content = Column(
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(widget.joke.setup ?? 'Joke Belum Dipilih'),
//         ),
//         Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Text(widget.joke.punchline?? 'Tidak Ada Punchline'),
//         ),
//       ],
//     );
//
//     if(widget.cekDevideLayout == true) {
//       return Center(child: content);
//     }
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.joke.type ?? 'no selected type'),
//       ),
//       body: Center(child: content),
//       backgroundColor: Colors.orange,
//     );
//   }
// }
