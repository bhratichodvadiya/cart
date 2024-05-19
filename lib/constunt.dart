import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences preferences;

List Cuisines = [
  {
    'image': 'assets/images/Chinese.png',
    'name': 'Chinese',
  },
  {
    'image': 'assets/images/ni_talie.png',
    'name': 'North Indian',
  },
  {
    'image': 'assets/images/si_food.png',
    'name': 'South Indian',
  },
  {
    'image': 'assets/images/Noodels.png',
    'name': 'Noodels',
  },
  {
    'image': 'assets/images/pizza.png',
    'name': 'Pizza',
  },
  {
    'image': 'assets/images/Burger.png',
    'name': 'Burger',
  },
  {
    'image': 'assets/images/Multicuisine.png',
    'name': 'Multicuisine',
  },
];

List Dessert = [
  {
    'image': 'assets/images/Shakes.png',
    'name': 'Shakes',
  },
  {
    'image': 'assets/images/Ice_cream.png',
    'name': 'Ice cream',
  },
  {
    'image': 'assets/images/Cake.png',
    'name': 'Cake',
  },
  {
    'image': 'assets/images/Noodels.png',
    'name': 'Coffee',
  },
  {
    'image': 'assets/images/Tea.png',
    'name': 'Tea',
  },
];

bool isfood = true;

List orders = [
  {
    'image': 'assets/image/image 22.png',
    'name': "Delicious Burger",
    'prize': 30,
    'quantity': 1
  },
  {
    'image': 'assets/image/meat-dish-with-vegetables.jpg',
    'name': "Samosa",
    'prize': 10,
    'quantity': 2
  },
  {
    'image': 'assets/image/image 54 (1).png',
    'name': "Strawberry Cake",
    'prize': 180,
    'quantity': 1
  },
  {
    'image': 'assets/image/image 22.png',
    'name': "Delicious Burger",
    'prize': 10,
    'quantity': 1
  },
];
