import 'package:flutter/material.dart';
import 'package:loby/core/theme/colors.dart';

class MyDropDownWidget extends StatefulWidget {
  const MyDropDownWidget({Key? key}) : super(key: key);

  @override
  State<MyDropDownWidget> createState() => _MyDropDownWidgetState();
}

class _MyDropDownWidgetState extends State<MyDropDownWidget> {
  final items = ['Select', 'Two', 'Three', 'Four'];
  String selectedValue = 'Select';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 0.0),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(10)),

        // dropdown below..
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            isExpanded: true,
            isDense: false,
            // Reduces the dropdowns height by +/- 50%
            icon: Icon(Icons.keyboard_arrow_down),
            value: selectedValue,
            items: items.map((item) {
              return DropdownMenuItem(
                value: item,
                child: Text(item, style: textTheme.subtitle1
                    ?.copyWith(fontSize: 18, color: iconTintColor)),
              );
            }).toList(),
            onChanged: (selectedItem) => setState(
              () => selectedValue = selectedItem.toString(),
            ),
          ),
        )
    );
  }
}
