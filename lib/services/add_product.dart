import 'package:store_app/helper/api.dart';
import 'package:store_app/models/productmodel.dart';

class AddProduct {
  Future<ProductModel> addProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required String category}) async  {
     Map < String , dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'descriptioon': desc,
        'image': image,
        'category': category
      },
    );
    return ProductModel.fromJson(data);
  }
}
