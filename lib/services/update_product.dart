import '../helper/api.dart';
import '../models/productmodel.dart';

class UpdateProductService
{
   Future<ProductModel> updateProduct(
      {required String title,
      required String price,
      required String desc,
      required String image,
      required int id,
      required String category}) async  {
        print('product id $id');
     Map < String , dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
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