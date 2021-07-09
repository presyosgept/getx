import 'package:get/state_manager.dart';
import 'package:getx/models/product.dart';
import 'package:getx/models/product.dart';
import 'package:getx/services/remote_services.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {}
}
