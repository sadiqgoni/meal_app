// import 'package:flutter/material.dart';
// import 'package:meal_app/models/dummy_data.dart';
//
// import '../widgets/meal_item.dart';
//
// class CategoryMealsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final routeArgs =
//         ModalRoute.of(context)?.settings.arguments as Map<String, String>;
//     final categoryTitle = routeArgs['title'];
//     final categoryId = routeArgs['id'];
//     final categoryMeals = dummyMeals
//         .where((meal) => meal.categories.contains(categoryId))
//         .toList();
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(categoryTitle!),
//       ),
//       body: Center(
//           child: ListView.builder(
//         itemBuilder: (BuildContext ctx, index) {
//           return MealItem(
//             title: categoryMeals[index].title,
//             imageUrl: categoryMeals[index].imageUrl,
//             duration: categoryMeals[index].duration,
//             affordability: categoryMeals[index].affordability,
//             complexity: categoryMeals[index].complexity,
//             id: categoryMeals[index].id,
//           );
//         },
//         itemCount: categoryMeals.length,
//       )),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../models/dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
    ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: categoryMeals[index].id,
            title: categoryMeals[index].title,
            imageUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}

