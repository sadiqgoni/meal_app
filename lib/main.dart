// import 'package:flutter/material.dart';
// import 'package:meal_app/screens/category_meals_screen.dart';
// import 'package:meal_app/screens/meal_detail_screen.dart';
// import 'package:meal_app/utils/routes.dart';
//
// import 'screens/categories_screen.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'DeliMeals',
//       theme: ThemeData(
//         canvasColor: const Color.fromRGBO(255, 254, 229, 1),
//         fontFamily: 'Roboto',
//         textTheme: ThemeData.light().textTheme.copyWith(
//             bodyText1: const TextStyle(
//               color: Color.fromRGBO(20, 51, 51, 1),
//             ),
//             bodyText2: const TextStyle(
//               color: Color.fromRGBO(20, 51, 51, 1),
//             ),
//             subtitle1: const TextStyle(
//               fontSize: 20,
//               fontFamily: 'RobotoCondensed',
//               fontWeight: FontWeight.bold,
//             )), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
//       ),
//       initialRoute: "/",
//       routes:{
//         "/": (ctx) => CategoriesScreen(),
//         Routes.categoryMeals: (ctx) => CategoryMealsScreen(),
//         MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
//       },
//         onGenerateRoute: (settings) {
//       print(settings.arguments);
//       // if (settings.name == '/meal-detail') {
//       //   return ...;
//       // } else if (settings.name == '/something-else') {
//       //   return ...;
//       // }
//       // return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
//     },
//     onUnknownRoute: (settings) {
//     return MaterialPageRoute(builder: (ctx) => CategoriesScreen(),);
//     },
//     );
//   }
// }

import 'package:flutter/material.dart';

import './screens/meal_detail_screen.dart';
import './screens/category_meals_screen.dart';
import './screens/categories_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyLarge: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            bodyMedium: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            titleMedium: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            )), colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink).copyWith(secondary: Colors.amber),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
