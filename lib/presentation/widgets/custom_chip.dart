import 'package:flutter/material.dart';
import 'package:loby/core/theme/colors.dart';

import '../../models/BubbleData.dart';

class CustomChip extends StatefulWidget {
  String? label;
  Color? color;
  List<BubbleData> labelName;

  CustomChip({Key? key, this.label, this.color, required this.labelName})
      : super(key: key);

  @override
  State<CustomChip> createState() => _CustomChipState();
}

class _CustomChipState extends State<CustomChip> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Wrap(
      spacing: 8.0,
      runSpacing: 4.0,
      children: [
        ...List.generate(
            widget.labelName.length,
            (index) => ChoiceChip(
                  selected: _selectedIndex == index,
                  label: Text(widget.labelName[index].text.toString(),
                      style:
                          textTheme.subtitle1?.copyWith(color: textWhiteColor)),
                  elevation: 1,
                  side: BorderSide(
                      color: widget.color ?? primaryColor2,
                      width: 1,
                      style: BorderStyle.solid),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  pressElevation: 1,
                  backgroundColor: backgroundColor2,
                  selectedColor: widget.color ?? primaryColor2,
                  onSelected: (bool selected) {
                    setState(() {
                      if (selected) {
                        _selectedIndex = index;
                      }
                    });
                  },
                )),
      ],
    );
  }
}
