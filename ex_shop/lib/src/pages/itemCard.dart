import 'package:ex_shop/src/config/constans.dart';
import 'package:ex_shop/src/model/productModel.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final ProductModel? productModel;

  final VoidCallback? press;
  ItemCard({this.productModel, this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            width: 160,
            decoration: BoxDecoration(
              color: productModel!.color,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Image.asset(productModel!.image.toString()),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              products[2].title.toString(),
              style: TextStyle(
                color: kTextLightColor,
              ),
            ),
          ),
          Text(
            "\$${productModel!.price.toString()}",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
