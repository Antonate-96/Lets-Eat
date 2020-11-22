import 'package:flutter/material.dart';

class ImageDetails {
  final String imagePath;
  final String price;
  final String titles;
  final String details;

  ImageDetails(
      {@required this.imagePath,
      @required this.price,
      @required this.titles,
      @required this.details});

  static List<ImageDetails> fetchAll() {
    return [
      ImageDetails(
          imagePath: 'assets/foods/burger.jpg',
          price: '80-220',
          titles: 'Burger',
          details:
              ' is a sandwich consisting of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. The patty may be pan fried, grilled, smoked or flame broiled. Hamburgers are often served with cheese, lettuce, tomato, onion, pickles, bacon, or chiles'),
      ImageDetails(
          imagePath: 'assets/foods/padthai.jpg',
          price: '80-120',
          titles: 'Padthai',
          details:
              ' a stir-fried rice noodle dish commonly served as a street food and at most restaurants in Thailand as part of the country cuisine.'),
      ImageDetails(
          imagePath: 'assets/foods/pizza.jpg',
          price: '80-300',
          titles: 'Pizza',
          details:
              'a savory dish of Italian origin consisting of a usually round, flattened base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as anchovies, mushrooms, onions, olives, pineapple, meat, etc.), which is then baked at a high temperature'),
      ImageDetails(
          imagePath: 'assets/foods/rice_chicken.jpg',
          price: '35-50',
          titles: 'Hainanese chicken rice',
          details:
              'Hainanese chicken rice is a dish of poached chicken and seasoned rice, served with chilli sauce and usually with cucumber garnishes. It was created by immigrants from Hainan in southern China and adapted from the Hainanese dish Wenchang chicken. The dish is seen throughout Southeast Asia'),
      ImageDetails(
          imagePath: 'assets/foods/sandwich.jpg',
          price: '80-120',
          titles: 'Sandwich',
          details:
              'A sandwich is a food typically consisting of vegetables, sliced cheese or meat, placed on or between slices of bread, or more generally any dish wherein bread serves as a container or wrapper for another food type.'),
      ImageDetails(
          imagePath: 'assets/foods/spaghetti.jpg',
          price: '80-120',
          titles: 'Spaghetti',
          details:
              'It is a staple food of traditional Italian cuisine. Like other pasta, spaghetti is made of milled wheat and water and sometimes enriched with vitamins and minerals. Italian spaghetti is typically made from durum wheat semolina.'),
      ImageDetails(
          imagePath: 'assets/foods/steak.jpg',
          price: '80-120',
          titles: 'Steak',
          details:
              'steak is a meat generally sliced across the muscle fibers, potentially including a bone. It is normally grilled, though can also be pan-fried. It is often grilled in an attempt to replicate the flavor of steak cooked over the glowing coals of an open fire.'),
      ImageDetails(
          imagePath: 'assets/foods/Rice_pork.jpg',
          price: '30-50',
          titles: 'Pad Krapow (Fried Basil)',
          details:
              'Pad krapao usually is made using minced pork or chicken (it’s also great with tofu) which is stir-fried with Thai basil and plenty of chillies.The dish served with white rice and topped with an oozing running friend egg “kai dao” which blends through the rest of the dish for an unforgettable taste sensation.'),
      ImageDetails(
          imagePath: 'assets/foods/Khao_Pad.jpg',
          price: '30-50',
          titles: 'Khao Pad (Fried Rice)',
          details:
              'Khao pad is maybe comparable to England’s love of sandwiches consumed on mass khao pad is a Thai go-to. Khao pad simply translates to “fried rice” and is just that with some egg, onion and that’s about it.'),
      ImageDetails(
          imagePath: 'assets/foods/Laab.jpg',
          price: '30-60',
          titles: 'Laab (Spicy Salad)',
          details:
              'Laab is a northeastern-style salad with meat or mushroom and mint which originates in the northeastern province of Isan. Laab comes in a variety of styles including chicken, pork, and mushroom. It is not recommended for those who can’t handle spice as it tends to come with a hefty kick.'),
      ImageDetails(
          imagePath: 'assets/foods/Tom_Yum_Goong.jpg',
          price: '80-120',
          titles: 'Tom Yum Goong',
          details:
              'This iconic bowl of steaming goodness is bold, aromatic and comes with a fairly strong spicy kick. Tom yum goong is created with quintessential Thai ingredients like lemongrass, chilli, galangal, kaffier lime leaves, shallots, fresh lime juice and plenty of fish sauce.'),
      ImageDetails(
          imagePath: 'assets/foods/Tom_kha_Gai.jpg',
          price: '60-120',
          titles: 'Tom Kha Gai (Chicken in Coconut Soup)',
          details:
              'Tom kha gai is related to tom yum and offers people with a lower tolerance to spice the opportunity to taste the same beautiful flavours. Besides the spice scale'),
    ];
  }
}
