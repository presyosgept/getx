import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:getx/models/product.dart';

class RemoteServices {
  static var client = http.Client();

  static Future<List<Product>> fetchProducts() async {
    var response = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline'));
        var jsonString = response.body;
    // if (response.statusCode == 200) {
    //   log('pif');
    //   var jsonString = response.body;
    //   return  productFromJson(jsonString);
    //   // return (Map<String, dynamic> jsonString);
    // } else {
    //   //so aoky ra wala namo nakuha sir hahaha  yeeeeey hahahhahahah siiir amo score indivdual?
    //   //shanaaoool sir amo score baaaa indivual siiigggiiii siiiirrrr taman 12 diay
    //   //ooookkkkaaayyy ssiiiir
    //   //show error message kahilakon naman mi ani sir oy basta sir pasar ko 3 points to ako tama ha ayaw ko hagbonga
    //   log("dsdfsd");
      return  productFromJson(jsonString);
    
  }
}
