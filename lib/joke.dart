import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

class Joke {
  Joke({
    required this.id,
    required this.type,
    required this.setup,
    required this.punchline,
  });

  final int id;
  final String type;
  final String setup;
  final String punchline;
}

final List <Joke> jokelist = <Joke>[
  Joke(
    id: 1,
    type: "Joke Anak Jakarta",
    setup: "udin: Gila ya, harga kuburan sekarang udah 100an!\nsupomo: Hah? 100 ribu",
    punchline: "udin: 100 juta lahh! Kalo 100 ribu gua mendingan meninggal sekarang, keburu mahal.",
  ),
  Joke(
      id: 2,
      type: "Joke Anak proggramer",
      setup: "Istri seorang programmer sedang melahirkan seorang bayi. Dokter segera menyerahkan bayi yang baru lahir kepada sang ayah.\nIstrinya bertanya dengan tidak sabar, Jadi, apakah dia anak laki-laki atau perempuan?",
      punchline: "Programmer itu menjawab, Benar.."
  ),
  Joke(
      id: 3,
      type: "Joke anak proggramer",
      setup: "Ngedate Anak Proggramer",
      punchline: "- Kita Matahin Keyboard Bukan Hati -"
  ),
  Joke(
      id: 4,
      type: "Joke Bapak Bapak",
      setup: "Kalo kita berenang di kolam renang, badan kita otomatis kena hak cipta.\nHahh... kenapa?",
      punchline: "Karena air kolam renang itu mengandung copyright"
  ),
];
