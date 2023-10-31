import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';

part 'Calculation.g.dart';

class calculation = _calculation with _$calculation;

abstract class _calculation with Store {
  TextEditingController dobController = TextEditingController(
      text: DateFormat('dd-MM-yyyy').format(DateTime.now()).toString());
  TextEditingController dateController = TextEditingController(
      text: DateFormat('dd-MM-yyyy').format(DateTime.now()).toString());
  @observable
  var pickDob = DateTime.now();
  var pickDate = DateTime.now();
  @observable
  int year = 0;
  @observable
  int month = 0;
  @observable
  int day = 0;
  @observable
  String Errror = "";
  @observable
  bool temp=true;

  @action
  dobPicker(BuildContext context) async {
    pickDob = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)))!;

    dobController.text = DateFormat('dd-MM-yyyy').format(pickDob).toString();
  }

  datePicker(BuildContext context) async {
    pickDate = (await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900),
        lastDate: DateTime(2100)))!;
    dateController.text = DateFormat('dd-MM-yyyy').format(pickDate).toString();
  }

  Calculate() {
    var dob = pickDob;
    var date = pickDate;
    temp=true;
    Errror="";
    if (dob.year < date.year) {
      year = date.year - dob.year;
      if (date.month < dob.month) {
        year = year - 1;
        month = (date.month + 12) - dob.month;
      } else {
        month = date.month - dob.month;
      }
      if (date.day < dob.day) {
        month = month - 1;
        day = (date.day + 30) - dob.day;
      } else {
        day = date.day - dob.day;
      }
    } else if (dob.year == date.year) {
      year = date.year - dob.year;
      if (dob.month < date.month) {
        month = date.month - dob.month;
        if (dob.day <= date.day) {
          day = date.day - dob.day;
        }
        else{
          month = month - 1;
          day = (date.day + 30) - dob.day;
        }
      } else if (dob.month == date.month) {
        month = date.month - dob.month;
        if (dob.day <= date.day) {
          day = date.day - dob.day;
        } else {
          Errror = "Invalid Date of Birth";
          temp=false;
        }
      } else {
        Errror = "Invalid Date of Birth";
        temp=false;
      }
    }
    else{
      Errror = "Invalid Date of Birth";
      temp=false;
    }
  }
}
