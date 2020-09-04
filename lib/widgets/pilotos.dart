import 'package:flutter/material.dart';

class Piloto {
  final String image, nome, equipe;
  final int pts, pos;
  final Color cor;
  Piloto({
    this.pos,
    this.pts,
    this.nome,
    this.equipe,
    this.image,
    this.cor,
  });
}

List<Piloto> pilotos = [
  Piloto(
    pos: 1,
    pts: 328,
    nome: "Luan Saporiti",
    equipe: "Marromenos F1 Team",
    image: "assets/images/pilotos/stig.jpg",
    cor: Colors.brown,
  ),
  Piloto(
    pos: 2,
    pts: 263,
    nome: "Max Coelho",
    equipe: "Baconators Racing Team",
    image: "assets/images/pilotos/stig.jpg",
    cor: Colors.yellow,
  ),
  Piloto(
    pos: 3,
    pts: 215,
    nome: "Bruno Mariotto",
    equipe: "Fixe Racing Team",
    image: "assets/images/pilotos/stig.jpg",
    cor: Colors.green,
  ),
  Piloto(
    pos: 4,
    pts: 206,
    nome: "Lucas Scremin",
    equipe: "Marromenos F1 Team",
    image: "assets/images/pilotos/lucasS.jpg",
    cor: Colors.brown,
  ),
  Piloto(
    pos: 5,
    pts: 185,
    nome: "Rodrigo Vandresen",
    equipe: "Arm in the Hole",
    image: "assets/images/pilotos/rodrigo.jpg",
    cor: Colors.pink,
  ),
  Piloto(
    pos: 6,
    pts: 89,
    nome: "Lucas Velasques",
    equipe: "Deng & Iang",
    image: "assets/images/pilotos/lucasV.jpg",
    cor: Colors.deepOrange,
  ),
  Piloto(
    pos: 7,
    pts: 88,
    nome: "Lewy Caron",
    equipe: "Arm in the Hole",
    image: "assets/images/pilotos/lewy.jpg",
    cor: Colors.pink,
  ),
  Piloto(
    pos: 8,
    pts: 61,
    nome: "Gabriel Damásio",
    equipe: "Black & Red Custom",
    image: "assets/images/pilotos/gabrielD.jpg",
    cor: Colors.red,
  ),
  Piloto(
    pos: 9,
    pts: 47,
    nome: "Andrei Poplade",
    equipe: "Black & Red Custom",
    image: "assets/images/pilotos/andrei.jpg",
    cor: Colors.red,
  ),
  Piloto(
    pos: 10,
    pts: 42,
    nome: "Eros Borba",
    equipe: "Gurgel Racing",
    image: "assets/images/pilotos/eros.jpg",
    cor: Colors.grey,
  ),
  Piloto(
    pos: 11,
    pts: 30,
    nome: "Gabriel Caldas",
    equipe: "Fixe Racing Team",
    image: "assets/images/pilotos/gabrielC.jpg",
    cor: Colors.green,
  ),
  Piloto(
    pos: 12,
    pts: 30,
    nome: "Julio Cerri",
    equipe: "Gurgel Racing",
    image: "assets/images/pilotos/julio.jpg",
    cor: Colors.grey,
  ),
  Piloto(
    pos: 13,
    pts: 29,
    nome: "Ian Mendes",
    equipe: "Deng & Iang",
    image: "assets/images/pilotos/ian.jpg",
    cor: Colors.deepOrange,
  ),
  Piloto(
    pos: 14,
    pts: 18,
    nome: "Alexandro Barros",
    equipe: "Baconators Racing Team",
    image: "assets/images/pilotos/alexandro.jpg",
    cor: Colors.yellow,
  ),
];
