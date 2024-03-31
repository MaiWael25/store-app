import 'package:flutter/material.dart';
import 'package:store_app/screens/update_product_page.dart';

import '../models/productmodel.dart';
class CustomCard extends StatelessWidget {
   CustomCard({required this.product,
    super.key,
  });
  ProductModel product ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.pushNamed(context , UpadateProdyctScreen.id,arguments: product);
      },
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
          
           
            decoration:  BoxDecoration( boxShadow: [
              BoxShadow(
                blurRadius: 50,
                color: Colors.grey.withOpacity(.2),
                spreadRadius: 0,
                offset: Offset(5,5)
              )
            ]),
            child: Card(
              elevation: 10,
              
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.title.substring(0,6),style: TextStyle(color: Colors.grey ,fontSize: 16),),
                    SizedBox(height: 3,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(r'$' '${product.price.toString()}',style: TextStyle(color: Colors.black ,fontSize: 16),),
                        Icon(Icons.favorite,color: Colors.red,),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        Positioned(
          right: 20,
          bottom: 65,
          child: Image.network(product.image,height: 100,width: 100,))
        ],
      ),
    );
  }
}