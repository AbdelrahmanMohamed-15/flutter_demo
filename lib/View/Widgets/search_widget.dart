import '../../Constant/appColors.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          fillColor: const Color(0xFFF5F7F9),
          hintText: 'Search in thousands of products',
          hintStyle:
              TextStyle(fontSize: 12.0, color: AppColors().lightGreyColor),
          prefixIcon: Icon(Icons.search, color: AppColors().darkGreyColor),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey[300]!,
              width: 1.5,
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(14.0),
            ),
          )),
    );
  }
}
