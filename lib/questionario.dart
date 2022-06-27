import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int p;
  final void Function(int) quandoResponder;

  Questionario({
    required this.perguntas,
    required this.p,
    required this.quandoResponder,
  });

  bool get temPergunta {
    return p < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas =
        temPergunta ? perguntas[p].cast()['Respostas'] : [];

    return Column(
        ////
        children: <Widget>[
          Questao(perguntas[p]['texto'].toString()),
          ...respostas.map((resp) {
            return Resposta(
              resp['texto'].toString(),
              () => quandoResponder(
                int.parse(resp['pontuacao'].toString()),
              ),
            );
          }).toList(),
        ]);
  }
}
