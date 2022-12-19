import 'package:flutter/material.dart';

class CustomDropdownButton extends StatefulWidget {
  const CustomDropdownButton({super.key});

  @override
  State<CustomDropdownButton> createState() => _CustomDropdownButtonState();
}

class _CustomDropdownButtonState extends State<CustomDropdownButton> {
  String? dropdownvalue = 'Uk-Mainland';
  List<String> countrys = ['UK-Mainland', 'United States', 'France', 'Italy'];

  int countrysIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DropdownButton<String>(
          underline: Container(),
          isExpanded: true,
          value: countrys[0],
          items: countrys
              .map(
                (countrys) => DropdownMenuItem<String>(
                  value: countrys,
                  child: Text(
                    countrys,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              )
              .toList(),
          icon: const Icon(
            Icons.arrow_downward_outlined,
            color: Colors.purple,
          ),
          onChanged: ((newValue) {
            setState(() {
              dropdownvalue = newValue;
            });
          }),
        ),
      ),
    );
  }
}
