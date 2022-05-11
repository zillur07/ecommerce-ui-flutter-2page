import 'package:ex_shop/src/config/constans.dart';
import 'package:ex_shop/src/model/productModel.dart';

import 'package:ex_shop/src/pages/categories.dart';
import 'package:ex_shop/src/pages/detailspage.dart';
import 'package:ex_shop/src/pages/itemCard.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPaddin,
          ),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                primary: false,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: kDefaultPaddin,
                  mainAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.65,
                ),
                itemBuilder: (context, index) {
                  return ItemCard(
                    productModel: products[index],
                    press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsPage(
                          productModel: products[index],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
