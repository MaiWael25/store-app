import 'package:flutter/material.dart';
import 'package:store_app/models/productmodel.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_button.dart';
import 'package:store_app/widgets/custom_text_field.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class UpadateProdyctScreen extends StatefulWidget {
  UpadateProdyctScreen({super.key});
  static String id = 'update product';

  @override
  State<UpadateProdyctScreen> createState() => _UpadateProdyctScreenState();
}

class _UpadateProdyctScreenState extends State<UpadateProdyctScreen> {
  String? productName, desc, image;

  String? price;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Update Product', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.purple,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 100,
                ),
                CustomTextField(
                  onChanged: (data) {
                    productName = data;
                  },
                  hintText: 'Product Name',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    desc = data;
                  },
                  hintText: 'Description',
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    price = data;
                  },
                  hintText: 'Price',
                  inputType: TextInputType.number,
                ),
                SizedBox(
                  height: 10,
                ),
                CustomTextField(
                  onChanged: (data) {
                    image = data;
                  },
                  hintText: 'image',
                ),
                SizedBox(
                  height: 40,
                ),
                CustomButon(
                  text: 'Update',
                  onTap: ()async {
                    isLoading = true;
                    setState(() {});
                    try {
                      await UpdateProduct(product);
                      print('success');
                    } catch (e) {
                      print(e.toString());
                      
                    }
                    isLoading = false;
                      setState(() {});
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

 Future <void> UpdateProduct(ProductModel product)async {
   await UpdateProductService().updateProduct(
       id: product.id,
        title: productName== null ? product.title : productName!,
        price: price== null ? product.price.toString() : price!,
        desc: desc== null ? product.description : desc!,
        image: image== null ? product.image : image!,
        category: product.category);
   
  }
}
