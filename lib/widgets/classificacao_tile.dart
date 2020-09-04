import 'package:deulag/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'dart:ui';

import 'package:flutter/widgets.dart';

class ClassificacaoTile extends StatelessWidget {
  ClassificacaoTile({
    Key key,
    @required this.size,
    this.pos,
    this.pts,
    this.nome,
    this.equipe,
    this.image,
    this.cor,
  });

  final String image, nome, equipe;
  final int pts, pos;
  final Color cor;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Container(
        child: Column(
          children: [
            Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 33,
                      color: Color(0xFFD3D3D3).withOpacity(.84),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 33,
                                      color: Color(0xFFD3D3D3).withOpacity(.84),
                                    ),
                                  ],
                                ),
                                height: 50,
                                width: 50,
                                margin: EdgeInsets.only(right: 5),
                                child: Center(
                                  child: Text(pos.toString(),
                                      style: kTabelaTilePts),
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      nome,
                                      style: kTabelaTileNome,
                                    ),
                                    Text(
                                      equipe,
                                      style: TextStyle(
                                        color: kLightBlackColor,
                                        fontSize: 14,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      pts.toString(),
                                      style: kTabelaPontos,
                                    ),
                                    Text('PTS',
                                        style: TextStyle(
                                          color: kLightBlackColor,
                                        ))
                                  ],
                                ),
                              ),
                              CircleAvatar(
                                radius: 28.0,
                                backgroundImage: AssetImage("$image"),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 5,
                        width: size.width * .65,
                        decoration: BoxDecoration(
                          color: cor,
                          borderRadius: BorderRadius.circular(7),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
