import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:inovation_ib/Models/Product.dart';


class ApiService {
  final String baseUrl = 'http://10.0.2.2:8000/api';

  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse('$baseUrl/products/'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => Product.fromJson(e)).toList();
    } else {
      throw Exception('Erreur API: ${response.statusCode}');
    }
  }
}