import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_dicoding/etalase_food_item.dart';
import 'package:flutter_project_dicoding/home_screen.dart';

class DetailFoodScreen extends StatelessWidget{
  final Food food;
  const DetailFoodScreen({Key? key, required this.food}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          "Detail Food",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.lightGreen,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  food.imageAsset,
                  fit: BoxFit.cover,
                  height: 220,
                  width: double.infinity,
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 16, top: 8),
                    child: Text(
                        food.name,
                        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w800),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis)),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 16),
                    child: Text(
                        "${food.price} rupiah ",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    )
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(color: Colors.black12, thickness: 1),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 15, 4),
                  child: Text(
                      'Deskripsi Makanan',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 16, right: 16),
                    child: Text(food.description, textAlign: TextAlign.justify,)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 15, 4),
                  child: Text(
                    'Tempat',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 8, left: 16),
                    child: Text(food.place)),
                ]
          ),
        )
      ),
    );
  }
}