import 'package:flutter/rendering.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HomeController extends  GetxController implements GetxService {

int _selectedCategory=0;
int get SelectedCategory=>_selectedCategory;
bool _checkbox=false;
 get checkbox=>_checkbox;

changeCat(int index){
  _selectedCategory=index;
  update();
}
checkboxchange(){
  _checkbox=!_checkbox;
  update();
}

}