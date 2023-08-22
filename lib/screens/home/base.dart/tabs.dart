import 'package:digiblock_network_task/util/dimensions.dart';
import 'package:digiblock_network_task/util/styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Tabs extends StatelessWidget {
  IconData icon;
  String text;
  Tabs({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Icon(
            icon,
            color: Theme.of(context).cardColor,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text,
              style: robotoRegular.copyWith(
                  fontSize: Dimensions.fontSizeSmall,
                  color: Theme.of(context).cardColor))
        ],
      ),
    );
  }
}
