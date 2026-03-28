import 'package:flutter/material.dart';
import 'api_services.dart';


class ProductListPage extends StatefulWidget {
  const ProductListPage({super.key});

  @override
  _ProductListPageState createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  final ApiService api = ApiService();
  late Future<List<Product>> products;

  @override
  void initState() {
    super.initState();
    products = api.fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produits')),
      body: FutureBuilder<List<Product>>(
        future: products,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting)
            return Center(child: CircularProgressIndicator());
          if (snapshot.hasError)
            return Center(child: Text('Erreur : ${snapshot.error}'));
          final items = snapshot.data ?? [];
          if (items.isEmpty) return Center(child: Text('Aucun produit'));
          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, i) {
              final p = items[i];
              return ListTile(
                title: Text(p.name),
                subtitle: Text(p.description),
                trailing: Text('${p.price.toStringAsFixed(2)} €'),
              );
            },
          );
        },
      ),
    );
  }
}