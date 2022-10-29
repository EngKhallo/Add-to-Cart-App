import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cart extends StatelessWidget {
  Cart(this.carts);

  List carts = [].obs;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Shopping Page'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: carts.length,
          itemBuilder: (context, index) {
            final currentCart = carts[index];
            return Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 0.5, color: Colors.grey[400]!),
                ),
              ),
              height: 80,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(currentCart['image']),
                    ),
                    SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        currentCart['name'],
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove_circle),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.add_circle),
                      onPressed: () {},
                    ),
                    SizedBox(width: 10),
                    Text(
                      currentCart['price'].toString(),
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                    SizedBox(width: 10),
                    IconButton(
                      icon: Icon(Icons.cancel),
                      onPressed: () {
                        carts.remove(currentCart);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
