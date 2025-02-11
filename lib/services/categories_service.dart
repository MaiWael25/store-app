
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productmodel.dart';
class CategoriesService 
{
  Future<List<ProductModel>> getCategoriesProducts ({required String categoryName}) async 
  {
    List<dynamic> data = 
    await Api().get(url: 'https://fakestoreapi.com/products/category/$categoryName');
 
  
  
  List<ProductModel> productList = [];
  for (int i = 0; i < data.length; i++) {
    productList.add(
      ProductModel.fromJson(data[i]),
    );
    
  }
  return productList;

  }


}