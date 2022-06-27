import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;

  const Resultado(this.pontuacao);

  get fraseResultado {
    if (pontuacao < 2) {
      return 'Parabéns, com prática você alcançará resultados melhores, não desista !!';
    } else if (pontuacao < 6) {
      return 'Você é bom nisso ! Continue Praticando para alcançar a nota máxima !';
    } else if (pontuacao < 8) {
      return 'Você está por dentro do mercado da tecnologia, com pouco esforço você alçancará o topo !';
    } else if (pontuacao == 10) {
      return 'Você é um perito na área, esse jogo não foi nada de mais para você, continue o bom trabalho !!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        fraseResultado,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
