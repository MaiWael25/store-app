import 'dart:convert';

import 'package:http/http.dart';

import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productmodel.dart';

class AllProductSrevice
{
  Future<List<ProductModel>> getAllProducts () async 
  {
    List<dynamic> data = 
    await Api().get(url: 'https://fakestoreapi.com/products');
    
    
  
  List<ProductModel> productList = [];
  for (int i = 0; i < data.length; i++) {
    productList.add(
      ProductModel.fromJson(data[i]),
    );
    
  }
  return productList;


  }

}