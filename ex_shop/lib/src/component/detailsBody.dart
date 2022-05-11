import 'package:ex_shop/src/config/constans.dart';
import 'package:ex_shop/src/model/productModel.dart';
import 'package:flutter/material.dart';

// class DetailsBody extends StatelessWidget {
//   final ProductModel? productModel;
//   DetailsBody({this.productModel});

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           SizedBox(
//             height: size.height,
//             child: Stack(
//               children: [
//                 Container(
//                   margin: EdgeInsets.only(top: size.height * 0.3),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(20),
//                       topRight: Radius.circular(20),
//                     ),
//                     color: Colors.white,
//                   ),
//                 ),
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: kDefaultPaddin,
//                       ),
//                       child: Text(
//                         'Aristocratic Hand Bag',
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                     Text(
//                       productModel!.title.toString(),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
