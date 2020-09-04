import 'package:deulag/screens/tabela_pilotos.dart';
import 'package:flutter/material.dart';
import 'package:deulag/widgets/proximas_etapas.dart';
import 'package:deulag/widgets/classificacao_tile.dart';
import 'package:deulag/widgets/pilotos.dart';
import 'package:deulag/constants.dart';
import 'package:deulag/widgets/botao_redondo.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.headline4,
                      children: [
                        TextSpan(text: "Próximas "),
                        TextSpan(
                          text: "Etapas",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CartaoEtapas(
                    image: "assets/images/flag-mexico.jpg",
                    etapa: "Etapa do México",
                    autodromo: "Hermanos Rodríguez",
                    data: '30/08',
                  ),
                  CartaoEtapas(
                    image: "assets/images/flag-usa.jpg",
                    etapa: "Etapa dos EUA",
                    autodromo: "Austin",
                    data: '05/09',
                  ),
                  CartaoEtapas(
                    image: "assets/images/flag-brasil.jpg",
                    etapa: "Etapa do Brasil",
                    autodromo: "Interlagos",
                    data: '12/09',
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          style: Theme.of(context).textTheme.headline4,
                          children: [
                            TextSpan(text: " "),
                            TextSpan(
                              text: "Classificação",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  border: Border.all(width: 5, color: Colors.white),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(29),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 33,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
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
                                          backgroundImage:
                                              AssetImage(pilotos[1].image),
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
                                        image: AssetImage(
                                            'assets/images/crown.png'),
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
                                          backgroundImage:
                                              AssetImage(pilotos[0].image),
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
                                        backgroundImage:
                                            AssetImage(pilotos[2].image),
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
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: FlatButton(
                            height: 200,
                            minWidth: 150,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29.0),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TabelaPilotos();
                                  },
                                ),
                              )
                            },
                            color: Colors.white,
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage(
                                      'assets/images/capacete-f1.png'),
                                  height: 100,
                                ),
                                SizedBox(
                                  width: 160,
                                  child: BotaoRedondo(
                                    text: 'Pilotos'.toUpperCase(),
                                    color: kBotaoRedondo,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(29),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: kShadowColor,
                              ),
                            ],
                          ),
                          child: FlatButton(
                            height: 200,
                            minWidth: 150,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(29.0),
                            ),
                            onPressed: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return TabelaPilotos();
                                  },
                                ),
                              )
                            },
                            color: Colors.white,
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image(
                                  image: AssetImage('assets/images/f1.png'),
                                  height: 100,
                                ),
                                SizedBox(
                                  width: 160,
                                  child: BotaoRedondo(
                                    color: kBotaoRedondo,
                                    text: 'Equipes'.toUpperCase(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
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
