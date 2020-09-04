import 'package:flutter/material.dart';

import 'package:deulag/widgets/pilotos.dart';
import 'package:deulag/constants.dart';
import 'package:deulag/widgets/classificacao_tile.dart';

class TabelaPilotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Classificação Pilotos'.toUpperCase(),
          style:
              TextStyle(fontWeight: FontWeight.w400, color: kLightBlackColor),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              pilotos[1].pos.toString(),
                              style: kTabelaPontos,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    color: Colors.grey.shade500,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage(pilotos[1].image),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              pilotos[1].nome,
                              style: kTabelaNome,
                            ),
                            Text(
                              pilotos[1].equipe,
                              style: kTabelaEquipe,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              pilotos[1].pts.toString(),
                              style: kTabelaPontos,
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image(
                              image: AssetImage('assets/images/crown.png'),
                              height: 50,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    color: Colors.grey.shade500,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 45.0,
                                backgroundImage: AssetImage(pilotos[0].image),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              pilotos[0].nome,
                              style: kTabelaNome,
                            ),
                            Text(
                              pilotos[0].equipe,
                              style: kTabelaEquipe,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              pilotos[0].pts.toString(),
                              style: kTabelaPontos,
                            )
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              pilotos[2].pos.toString(),
                              style: kTabelaPontos,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 1),
                                    blurRadius: 3,
                                    color: Colors.grey.shade500,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: CircleAvatar(
                                radius: 35.0,
                                backgroundImage: AssetImage(pilotos[2].image),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              pilotos[2].nome,
                              style: kTabelaNome,
                            ),
                            Text(
                              pilotos[2].equipe,
                              style: kTabelaEquipe,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              pilotos[2].pts.toString(),
                              style: kTabelaPontos,
                            )
                          ]),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    CriarTabela(3),
                    CriarTabela(4),
                    CriarTabela(5),
                    CriarTabela(6),
                    CriarTabela(7),
                    CriarTabela(8),
                    CriarTabela(9),
                    CriarTabela(10),
                    CriarTabela(11),
                    CriarTabela(12),
                    CriarTabela(13),
                  ],
                ),
              ),
            ),
            // TODO: bottom bar
          ],
        ),
      ),
    );
  }
}

class CriarTabela extends StatelessWidget {
  CriarTabela(this.id);
  final int id;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClassificacaoTile(
      size: size,
      pos: pilotos[id].pos,
      pts: pilotos[id].pts,
      nome: pilotos[id].nome,
      equipe: pilotos[id].equipe,
      image: pilotos[id].image,
      cor: pilotos[id].cor,
    );
  }
}
