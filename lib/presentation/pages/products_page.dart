import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            context.pop();
          }, icon: const Icon(CupertinoIcons.chevron_back)),
        title: const Text('Products List'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index){
          return ListTile(
            leading: Text((index + 1).toString()),
            title: Text('product ${index + 1}'),
            trailing: const Icon(CupertinoIcons.chevron_right),
            onTap: () {
              context.go(Uri(path: '/products/details/$index', queryParameters: {'category': 'popular'}).toString());
            },
          );
        }, 
        separatorBuilder: (context, index){
          return const SizedBox(height: 8);
        }, 
        itemCount: 10
      ),
    );
  }
}