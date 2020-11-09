import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_market/cubit/cubit.dart';
import 'package:food_market/cubit/transaction_cubit.dart';
import 'package:food_market/models/models.dart';
import 'package:get/get.dart';
import 'package:food_market/UI/page/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => UserCubit()),
          BlocProvider(
            create: (_) => TransactionCubit(),
          ),
          BlocProvider(create: (_)=>FoodCubit())
        ],
        child: GetMaterialApp(
            debugShowCheckedModeBanner: false, home: SignInPage()));
  }
}
/**/
