import 'package:flutter/material.dart';
import '../../../Constant/appColors.dart';

class LocationWidget extends StatelessWidget {
  String? location;
  LocationWidget({Key? key, this.location}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.02, vertical: size.height * 0.012),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          color: AppColors().mainColor),
      child: Row(
        children: [
          const Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 15,
          ),
          SizedBox(width: size.width * 0.02),
          Text(
            location ??= "Mustafa St.",
            style: const TextStyle(
                color: Colors.white,
                fontSize: 12.0,
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
