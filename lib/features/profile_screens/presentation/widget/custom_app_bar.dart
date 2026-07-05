import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/config/theme/app_color.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';


class CustomAppBarpro extends StatelessWidget {
  const CustomAppBarpro({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
        AppStrings.description,
          // style: AppStyles.styleInterExtraBold32.copyWith(color: AppColors.darkSlateGray),
        ),


          IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              // Handle notification press
            },
          ),


      ],
    );
  }
}