// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'questionario.dart';
import './resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _p = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
    {
      'texto': 'Onde as variáveis ficam armazenadas?',
      'Respostas': [
        {'texto': 'No Programa/Software', 'pontuacao': 0},
        {'texto': 'Na memoria RAM do computador', 'pontuacao': 1},
        {'texto': 'No Banco de Dados', 'pontuacao': 0},
        {'texto': 'Todas as alternativas estão corretas', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'De onde vem o nome "bug?"',
      'Respostas': [
        {'texto': 'Bug é uma sigla', 'pontuacao': 0},
        {
          'texto':
              'Pois Insetos(bug em inglês), não são legais e os bugs também não.',
          'pontuacao': 0
        },
        {'texto': 'Apenas um nome aleatório', 'pontuacao': 0},
        {
          'texto':
              'Os computadores antigos esquentavam muito e isso atraia insetos. Por isso o Nome bug.',
          'pontuacao': 1
        },
      ]
    },
    {
      'texto':
          ' Assinale a alternativa correta: 1: Conjunto de Programas, 2: Usuários ou profissionais em TI e 3: Parte física do Computador.',
      'Respostas': [
        {'texto': '1: Hardware, 2: Software, 3: Firmware.', 'pontuacao': 0},
        {'texto': '1: Softeare, 2: Firmware, 3: Hardware.', 'pontuacao': 0},
        {'texto': '1: Software, 2: Peopleware, 3: Hardware.', 'pontuacao': 1},
        {'texto': '1: Software, 2: Tupperware, 3: Firmware.', 'pontuacao': 0},
      ]
    },
    {
      'texto':
          'Assinale a alternativa que não contém uma regra para nomeação de variáveis.',
      'Respostas': [
        {'texto': 'Não pode ser palavra reservada.', 'pontuacao': 0},
        {'texto': 'Os espaços devem ser dados por underline.', 'pontuacao': 1},
        {'texto': 'Devem começar sempre com letras.', 'pontuacao': 0},
        {'texto': 'Não podem ter números.', 'pontuacao': 0},
      ]
    },
    {
      'texto':
          'Qual dos grupos apresentados abaixo apresenta apenas paradigmas de programação?',
      'Respostas': [
        {
          'texto': 'Imperativo, Funcional, Lógico e Orientado a Objetos.',
          'pontuacao': 1
        },
        {
          'texto': 'Algol, Basic, Lógico e Orientado a Objetos.',
          'pontuacao': 0
        },
        {
          'texto': 'Imperativo, Programar, Lógico e Orientado a Objetos.',
          'pontuacao': 0
        },
        {
          'texto': 'Orientado a Objetos, Java, Imperativo e Lógico.',
          'pontuacao': 0
        },
      ]
    },
    {
      'texto': 'Qual das seguintes variáveis só aceita números inteiros?',
      'Respostas': [
        {'texto': 'Single.', 'pontuacao': 0},
        {'texto': 'String.', 'pontuacao': 0},
        {'texto': 'Int.', 'pontuacao': 1},
        {'texto': 'Long.', 'pontuacao': 0},
      ]
    },
    {
      'texto':
          'Qual das linguagens abaixo é utilizada para manipulação de banco de dados?',
      'Respostas': [
        {'texto': 'Haskell', 'pontuacao': 0},
        {'texto': 'XML', 'pontuacao': 0},
        {'texto': 'SQL', 'pontuacao': 1},
        {'texto': 'Rust', 'pontuacao': 0},
      ]
    },
    {
      'texto': 'Para que se usa // em programação?',
      'Respostas': [
        {'texto': 'Para fazer um Print de texto.', 'pontuacao': 0},
        {'texto': 'Para fazer uma quebra de Linha.', 'pontuacao': 0},
        {'texto': 'Para executar um script.', 'pontuacao': 0},
        {'texto': 'Para comentar uma linha de código.', 'pontuacao': 1},
      ]
    },
    {
      'texto': 'Qual foi o primeiro sistema operacional da Microsoft?',
      'Respostas': [
        {'texto': 'MsDOS 6.22', 'pontuacao': 1},
        {'texto': 'Windows 10', 'pontuacao': 0},
        {'texto': 'Windows 98', 'pontuacao': 0},
        {'texto': 'Windows 95', 'pontuacao': 0},
      ]
    },
    {
      'texto':
          'No Flutter, um componente visual para definir a interface de um aplicativo é chamado de: ',
      'Respostas': [
        {'texto': 'Stack', 'pontuacao': 0},
        {'texto': 'Scaffold', 'pontuacao': 0},
        {'texto': 'Widget', 'pontuacao': 1},
        {'texto': 'Layout', 'pontuacao': 0},
      ]
    },
  ];
  bool get temPergunta {
    return _p < _perguntas.length;
  }

  void _responder(int pontuacao) {
    if (temPergunta) {
      setState(() {
        _p++;
        _pontuacaoTotal += pontuacao;
      });
    }
    print(_pontuacaoTotal);
  }

  @override
  Widget build(BuildContext context) {
    // for (String textoResp in respostas) {
    //   widgets.add(Resposta(textoResp, _responder));
    // }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Perguntas'),
        centerTitle: true,
      ),
      body: temPergunta
          //Questionario
          ? Questionario(
              perguntas: _perguntas, p: _p, quandoResponder: _responder)
          //Resultado
          : Resultado(_pontuacaoTotal),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
