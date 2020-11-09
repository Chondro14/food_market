import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_market/models/models.dart';
import 'package:food_market/service/service.dart';

part 'food_state.dart';

class FoodCubit extends Cubit<FoodState> {
  FoodCubit() : super(FoodInitial());
  Future<void> getFoods()async{
    ApiReturnValue<List<Food>> results= await FoodService.getFoods();
    if(results.value!=null){
      emit(FoodLoaded(results.value));
    }else{
      emit(FoodLoadingFailed(results.message));
    }
  }
}
