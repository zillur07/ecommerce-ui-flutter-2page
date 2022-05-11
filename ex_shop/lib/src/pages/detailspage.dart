import 'package:ex_shop/src/component/detailsBody.dart';
import 'package:ex_shop/src/config/constans.dart';
import 'package:ex_shop/src/model/productModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailsPage extends StatelessWidget {
  final ProductModel? productModel;
  DetailsPage({this.productModel});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: productModel!.color,
      appBar: buildAppbar(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPaddin,
                        ),
                        child: Text(
                          'Aristocratic Hand Bag',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPaddin),
                        child: Text(
                          productModel!.title.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headline4!
                              .copyWith(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            RichText(
                              text: TextSpan(children: [
                                TextSpan(text: 'Price\n'),
                                TextSpan(
                                    text: '\$${productModel!.price.toString()}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headline4!
                                        .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        )),
                              ]),
                            ),
                            SizedBox(
                              width: kDefaultPaddin,
                            ),
                            Expanded(
                              child: Image.asset(
                                productModel!.image.toString(),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      // title: Text('\$${productModel!.price.toString()}'),
      backgroundColor: productModel!.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/search.svg',
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(
            'assets/icons/cart.svg',
          ),
        ),
        SizedBox(
          width: kDefaultPaddin / 2,
        ),
      ],
    );
  }
}
