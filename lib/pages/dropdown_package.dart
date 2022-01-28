import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_package/main.dart';

class DropDownPackage extends StatelessWidget {
  List<Map<String, dynamic>> dataList = [
    {'Country': 'Brazil', 'id': 1},
    {'Country': 'Italia', 'id': 2},
    {'Country': 'Tunisia', 'id': 3},
    {'Country': 'Canada', 'id': 4},
    {'Country': 'Indonesia', 'id': 5},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: DropdownSearch<Map<String, dynamic>>(
          mode: Mode.MENU,
          items: dataList,
          // popupItemDisabled: (String s) => s.startsWith('I'),
          onChanged: print,
          // selectedItem: {'Country': 'Italia', 'id': 2},
          showSearchBox: true,
          popupItemBuilder: (context, item, isSelected) => ListTile(
            textColor: Colors.blue,
            title: Text(item['Country']), //Tampilan di pop up menunya
          ),
          dropdownBuilder: (context, selectedItem) => Text(
              selectedItem?['Country'] ??
                  'Belum Ada data'), //ini untuk tampilan di bar nya
        ),
      ),
    );
  }
}
