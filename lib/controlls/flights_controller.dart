
// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:get/get.dart';

class FlightController extends GetxController implements GetxService {
int _selectedcat=1;
int get selectedCat=>_selectedcat;

bool _DirectflightOnly=false;
bool get directFlightOnly =>_DirectflightOnly;
int _selectedPlace=1;
int get selectedplace=>_selectedPlace;
changetripCat(val){
_selectedcat=val;
update();
}


directflightonlychange(Value){
  _DirectflightOnly=Value;
  update();
}
selectplace(index){
  _selectedPlace=index;update();
}

}