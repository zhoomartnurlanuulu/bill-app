import 'package:flutter/material.dart';

class DropDownWidget extends StatefulWidget {
  const DropDownWidget({
    Key? key,
    required this.isActive,
  }) : super(key: key);

  final bool isActive;

  @override
  State<DropDownWidget> createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    int counter = 1;
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(6)),
      height: 31,
      width: 63,
      child: widget.isActive
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: 1,
                ),
                Text('$counter'),
                Center(
                  child: PopupMenuButton(
                    icon: const Icon(Icons.arrow_drop_down_outlined),
                    itemBuilder: (context) => [
                      const PopupMenuItem(
                        value: 1,
                        child: Text('1'),
                      ),
                      const PopupMenuItem(
                        value: 2,
                        child: Text('2'),
                      ),
                      const PopupMenuItem(
                        value: 3,
                        child: Text('3'),
                      ),
                      const PopupMenuItem(
                        value: 4,
                        child: Text('4'),
                      ),
                      const PopupMenuItem(
                        value: 5,
                        child: Text('5'),
                      ),
                      const PopupMenuItem(
                        value: 6,
                        child: Text('6'),
                      ),
                    ],
                    onSelected: (value) {
                      if (value == 1) {
                        setState(() {
                          counter = 1;
                        });
                        counter = 1;
                      } else if (value == 2) {
                        setState(() {
                          counter = 2;
                        });
                      }
                    },
                  ),
                ),
              ],
            )
          : Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(6)),
            ),
    );
  }
}


