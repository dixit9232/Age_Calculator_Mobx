import 'package:age_calculator_mobx/Calculation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

void main() {
  runApp(MaterialApp(
    home: Age_Calculator(),
    debugShowCheckedModeBanner: false,
  ));
}

class Age_Calculator extends StatelessWidget {
  calculation c = calculation();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Age Calculator")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: TextField(
                controller: c.dobController,
                keyboardType: TextInputType.none,
                decoration: InputDecoration(labelText: 'Enter DOB'),
                onTap: () {
                  c.dobPicker(context);
                },
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.90,
              child: TextField(
                keyboardType: TextInputType.none,
                controller: c.dateController,
                onTap: () {
                  c.datePicker(context);
                },
                decoration: InputDecoration(labelText: 'Enter Date'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Observer(
              builder: (context) {
                return (c.temp)
                    ? Text(
                        "Age:${c.year.toString()} Years or\n ${c.month.toString()} Month or\n ${c.day.toString()} Days old",
                        style: TextStyle(fontSize: 30),
                      )
                    : Text("${c.Errror}",
                        style: TextStyle(fontSize: 20, color: Colors.red));
              },
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  c.Calculate();
                },
                child: Text("Calculate Age"))
          ],
        ),
      ),
    );
  }
}
