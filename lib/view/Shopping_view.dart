import 'package:flutter/material.dart';
import 'package:furniture_store/core/models/colors.dart';
import 'package:furniture_store/core/models/storage_model.dart';

class ShoppingView extends StatelessWidget {
  const ShoppingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.search,
          color: AppColors.black,
        ),
        centerTitle: true,
        title: Text(
          'Favorites',
          style: TextStyle(
            color: AppColors.black,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [Icon(Icons.add_shopping_cart_rounded)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                height: 500,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemCount: storagelist.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return Divider();
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              storagelist[index].image ?? '',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 30),
                          Column(
                            children: [
                              Text(
                                storagelist[index].name ?? '',
                                style: TextStyle(color: AppColors.grey),
                              ),
                              Text(
                                storagelist[index].price ?? '',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          Spacer(),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.highlight_remove_rounded)),
                              SizedBox(height: 30),
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                  ),
                                  onPressed: () {},
                                  child: Icon(
                                    Icons.shopping_bag,
                                    color: Colors.black,
                                  ))

                              // Container(
                              //   width: 30,
                              //   height: 30,
                              //   decoration: BoxDecoration(
                              //       color: Colors.grey,
                              //       borderRadius: BorderRadius.circular(10)),
                              //   child: Icon(
                              //     Icons.shopping_bag,
                              //     color: Colors.black,
                              //     size: 25,
                              //   ),
                              // ),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
