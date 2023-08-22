import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_disposable.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:intl/intl.dart';

class StaysController extends GetxController implements GetxService {
  int _selectedCategory = 0;
  int get SelectedCategory => _selectedCategory;
  bool _checkbox = false;
  get checkbox => _checkbox;
  DateTime _dateTime = DateTime.now();
  DateTime get date => _dateTime;

  changeCat(int index) {
    _selectedCategory = index;
    update();
  }

  checkboxchange() {
    _checkbox = !_checkbox;
    update();
  }

  String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('EEE, dd MMM yyyy');
    final String formattedDate = formatter.format(date);
    return formattedDate;
  }

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _dateTime,
      firstDate: DateTime(2023),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _dateTime) {
      _dateTime = picked;

      update();
    }
  }
}
