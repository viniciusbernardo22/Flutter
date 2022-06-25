// ignore_for_file: deprecated_member_use
import './questao.dart';
import 'package:flutter/material.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _p = 0;
  void _responder() {
    setState(() {
      _p++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, Object>> perguntas = [
      {
        'texto': 'Qual é sua cor Favorita?',
        'Respostas': ['Azul', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal Favorito?',
        'Respostas': ['Girafa', 'Leão', 'Elefante', 'Coelho']
      },
      {
        'texto': 'Qual seu gênero de musica favorito?',
        'Respostas': ['Rock', 'MPB', 'Hip Hop/Rap', 'Pagode']
      },
      {
        'texto': 'Qual sua linguagem de programação favorita?',
        'Respostas': ['JavaScript', 'Java', 'Dart', 'Python']
      }
    ];
    List<String> respostas = perguntas[_p].cast()['Respostas'];

    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Questao(perguntas[_p]['texto'].toString()),
            ...respostas.map((t) => Resposta(t, _responder)).toList(),
          ],
        ),
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
