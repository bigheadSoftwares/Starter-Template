import 'package:flutter/material.dart';

void showSheet(
    BuildContext context, Widget Function(BuildContext buildContext) child) {
  showModalBottomSheet(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),
    isScrollControlled: true,
    enableDrag: true,
    useRootNavigator: false,
    context: context,
    builder: (BuildContext buildContext) {
      return child(buildContext);
    },
  );
}
