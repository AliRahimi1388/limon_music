import 'package:flutter/material.dart';

class AppBarTextSearchField extends StatelessWidget {
  final VoidCallback onTapCallback;

  const AppBarTextSearchField({
    super.key,
    required this.onTapCallback,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          filled: true,
          isDense: true,
          fillColor: Colors.black45,
          hintText: 'Ali Sarkhosh',
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Colors.grey.shade400),
          prefixIcon: Icon(
            Icons.search_rounded,
            color: Colors.grey.shade400,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0),
              borderSide: BorderSide.none)),
      onTap: onTapCallback,
    );
  }
}
