import 'package:add_to_cart/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class cart extends StatelessWidget {
  cart({super.key});

  RxList carts = [].obs;

  List items = [
    {'image': 'assets/banana.jpg', 'name': 'banana', 'price': 0.5},
    {'image': 'assets/apple.webp', 'name': 'apple', 'price': 0.2},
    {'image': 'assets/mango.png', 'name': 'mango', 'price': 0.7},
    {'image': 'assets/orange.jpg', 'name': 'orange', 'price': 1.0},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Shopping Cart'),
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (ctx) => Cart(carts)),
                  );
                }),
            Obx(
              () => Text(
                carts.length.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
        body: GridView.builder(
          itemCount: items.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (ctx, index) {
            final currentItem = items[index];
            return Container(
              padding: EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(
                    child: IconButton(
                      // controller: name,
                      onPressed: () {
                        carts.add(currentItem);
                      },
                      icon: Icon(Icons.shopping_cart_checkout),
                    ),
                  ),
                  Expanded(child: Image.asset(currentItem['image'])),
                  Row(
                    children: [
                      Text(currentItem['name']),
                      Text(currentItem['price'].toString()),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  )
                ],
              ),
            );
          },
        ));
  }
}
