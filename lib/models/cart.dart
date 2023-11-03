import 'package:flutter/material.dart';
import 'package:shoe_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
        name: 'ZOOM FREAK',
        description: 'The forward-thinking design of his latest signature shoe',
        imagePath: 'assets/images/jordanB.png',
        price: '236'),
    Shoe(
        name: 'Air Jordans',
        description: 'You \'ve got the hops and the speed-late up in shoes that enhance',
        imagePath: 'assets/images/download.jpg',
        price: '220'),
    Shoe(
        name: 'KD Treys',
        description: 'A secure midfoot strap is suited for scoring binges and defensive',
        imagePath: 'assets/images/images.jpeg',
        price: '240'),
    Shoe(
        name: 'Kyrie 6',
        description: 'Bouncy cushioning is paired with soft yet supportive foam for res',
        imagePath: 'assets/images/image.jpeg',
        price: '198'),
  ];

  List <Shoe> userCart=[];

  List<Shoe> getShoeList(){
    return shoeShop;
  }
  List<Shoe> getUserCart(){
    return userCart;
  }

  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}
