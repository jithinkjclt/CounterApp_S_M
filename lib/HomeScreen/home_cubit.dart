import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  int counter = 0;
  bool flag=true;

  increment(){

    if (flag==true){
      counter++;
      if(counter==10){
        flag=false;
      }
    }
    else{
      counter--;
      if(counter==0){
        flag=true;
      }
    }
    emit(HomeInitial());
    print("counter >>>>$counter");
  }



}
