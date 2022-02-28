 import 'package:flutter/material.dart';
 import 'package:joke_app/halaman_detailjoke.dart';
 import 'package:joke_app/halaman_listjoke.dart';
 import 'package:joke_app/joke.dart';

 class HalamanAdaptive extends StatefulWidget {
   const HalamanAdaptive({Key? key}) : super(key: key);

   @override
   _HalamanAdaptiveState createState() => _HalamanAdaptiveState();
 }

 class _HalamanAdaptiveState extends State<HalamanAdaptive> {
   late Joke pilihanJoke;

   // Widget buildNotTablet() {
   //   return HalamanListJoke(
   //     pilihanJokeCallback: (pilihan) {
   //       Navigator.push(
   //           context,
   //           MaterialPageRoute(
   //               builder: (context) => HalamanDetailJoke(
   //                     cekDeviceLayout: false,
   //                     joke: pilihan,
   //                   )));
   //     },
   //   );
   // }
   //
   // Widget buildTablet() {
   //   return Row(
   //     children: <Widget>[
   //       Flexible(
   //         child: Material(
   //           elevation: 16,
   //           child: HalamanListJoke(
   //             pilihanJokeCallback: (pilihan) {
   //               setState(() {
   //                 pilihanJoke = pilihan;
   //               });
   //             },
   //             pilihanjoke: pilihanJoke,
   //           ),
   //         ),
   //       ),
   //       Flexible(child: HalamanDetailJoke(
   //         cekDevideLayout: true,
   //         joke: pilihanJoke,
   //       ))
   //     ],
   //   );
   // }

   @override
   Widget build(BuildContext context) {
     Widget content;
     var ukuranlayar = MediaQuery.of(context).size.shortestSide;
     var orientasilayar = MediaQuery.of(context).orientation;
     if (orientasilayar == Orientation.portrait && ukuranlayar < 600) {
       // content = buildNotTablet();
     } else {
       // content = buildTablet();
     }
     return Scaffold(
       appBar: AppBar(
         title: Text("joke app"),
       ),
       backgroundColor: Colors.orange,
     );
   }
 }
