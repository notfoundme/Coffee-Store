import 'package:flutter/material.dart';

class LocationDropdown extends StatefulWidget {
  @override
  _LocationDropdownState createState() => _LocationDropdownState();
}

class _LocationDropdownState extends State<LocationDropdown> {
  String selectedLocation = 'Biratnagar';

  // List of locations in Nepal
  List<String> locations = [
    'Kathmandu',
    'Pokhara',
    'Birgunj',
    'Biratnagar',
    'Butwal',
    // Add more locations as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
      
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: DropdownButton<String>(
            value: selectedLocation,
            onChanged: (String? newValue) {
              setState(() {
                selectedLocation = newValue!;
              });
            },
            items: locations.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
    );
  }
}
