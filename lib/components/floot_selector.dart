import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_car_parking/config/colors.dart';

class FloorSelector extends StatelessWidget {
  const FloorSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
        focusColor: Colors.white,
        items: const [
          DropdownMenuItem(
            value: "1st Floor",
            child: Text("1st Floor"),
          ),
          DropdownMenuItem(
            value: "2nd Floor",
            child: Text("2nd Floor"),
          ),
          DropdownMenuItem(
            value: "3rd Floor",
            child: Text("3rd Floor"),
          )
        ],
        onChanged: (value) {
        },
        hint: const Text(
            "1 Floor",
            style: TextStyle(
              color: blueColor,
              fontSize: 15,
            ),
          ),);
  }
}
