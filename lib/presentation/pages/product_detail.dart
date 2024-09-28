import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key, required this.id, this.category});
  final String id;
  final String? category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            context.pop();
          }, icon: const Icon(CupertinoIcons.chevron_back)),
        title: const Text('Product Detail'),
      ),
      body: Center(
        child: Text('${(int.parse(id) + 1)} $category'),
      ),
    );
  }
}