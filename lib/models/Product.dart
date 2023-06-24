import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "GTA V",
      price: 234,
      size: 20,
      description: dummyText,
      image: "assets/images/1.png",
      color: Color.fromARGB(255, 165, 172, 179)),
  Product(
      id: 2,
      title: "Assassin’s Creed",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "The Witcher",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Counter-Strike",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Fortnite",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/5.png",
      color: Color.fromARGB(255, 170, 200, 206)),
  Product(
    id: 6,
    title: "PUBG",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";

class Game {
  final String id;
  final String name;
  final String description;
  final double price;
  final String image;
  final String releaseDate;
  final int recommendationCount;
  final List<String> platforms;
  final List<String> players;
  final List<String> genres;
  final List<String> misc;

  Game({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.releaseDate,
    required this.recommendationCount,
    required this.platforms,
    required this.players,
    required this.genres,
    required this.misc,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      price: json['price'],
      image: json['image'],
      releaseDate: json['releaseDate'],
      recommendationCount: json['recommendationCount'],
      platforms: List<String>.from(json['platforms']),
      players: List<String>.from(json['players']),
      genres: List<String>.from(json['genres']),
      misc: List<String>.from(json['misc']),
    );
  }
}



// // Загрузить JSON-данные из файла
// Future<String> loadJsonData() async {
//   String jsonData = await rootBundle.loadString('assets/your_json_file.json');
//   return jsonData;
// }

// // Прочитать данные из JSON и создать экземпляр модели Game
// void readJsonData() async {
//   String jsonData = await loadJsonData();
//   Map<String, dynamic> jsonMap = jsonDecode(jsonData);
//   Game game = Game.fromJson(jsonMap);
// }


