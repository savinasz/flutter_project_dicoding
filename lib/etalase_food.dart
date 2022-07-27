import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_dicoding/detail_screen.dart';
import 'package:flutter_project_dicoding/etalase_food_item.dart';

class FoodTabBarViews extends StatefulWidget{
  final List<Food> item;
  const FoodTabBarViews({Key? key, required this.item}) : super(key: key);

  @override
  State<FoodTabBarViews> createState() => _FoodTabBarViewsState();
}
class _FoodTabBarViewsState extends State<FoodTabBarViews>{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: widget.item.length,
        itemBuilder: (context, index){
          return FoodItem(food: widget.item[index]);
        }
    );
      // foodBuilder();
  }
}

class FoodItem extends StatelessWidget{
  final Food food;
  const FoodItem({Key? key, required this.food}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (c) => DetailFoodScreen(
              food: food),
          ),
        );
      },
      child: Card(
        elevation: 2,
        margin: const EdgeInsets.only(top: 12, left: 12, right: 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(8)),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imageAsset,
                    width: 100,
                    height: 100,
                      fit: BoxFit.cover
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    Text(
                      food.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          overflow: TextOverflow.ellipsis),
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          food.price,
                          style: TextStyle(fontSize: 20),
                        ),
                        const Text("/porsi")
                      ],
                    ),
                    Text(food.place),
                    const SizedBox(
                      height: 8,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: _buildIndicator()),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIndicator(){
    return Container(
      width: 80,
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: _statusFoodColor(food.status))),
      child: Center(
        child: Text(_statusFood(food.status),
            textAlign: TextAlign.center,
            style: TextStyle(
              color: _statusFoodColor(food.status),
              fontWeight: FontWeight.w600,
              fontSize: 12,
            )),
      ),
    );
  }

  Color _statusFoodColor(int status) {
    switch (status) {
      case 0:
        return Colors.red;
      case 1:
        return Colors.cyanAccent;
      case 2:
        return Colors.orange;
      default:
        return Colors.green;
    }
  }

  String _statusFood(int status) {
    switch (status) {
      case 0:
        return 'All';
      case 1:
        return 'Indonesian';
      case 2:
        return 'Korean';
      default:
        return 'Japanese';
    }
  }
}

