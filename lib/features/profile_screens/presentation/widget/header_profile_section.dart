import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import '../../../../core/config/theme/app_color.dart';
import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/constants/assets.app.dart';

class HeaderProfileSectionA extends StatefulWidget {
  const HeaderProfileSectionA({super.key});

  @override
  State<HeaderProfileSectionA> createState() => _HeaderProfileSectionAState();
}

class _HeaderProfileSectionAState extends State<HeaderProfileSectionA> {
  File? _image;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            color: AppColors.primary,
            height: 260,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(AppAssets.profileBackGround,
                        width: double.infinity)),
                Positioned(
                  top: 65,
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            AppStrings.myAccount,
                            // style: AppStyles.styleInterBold24
                            //     .copyWith(color: AppColors.white),
                          ),
                          const Spacer(),
                          GestureDetector(
                              onTap: () {},
                              // child: SvgPicture.asset(AppAssets.notification)
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
        Container(
          width: MediaQuery.sizeOf(context).width * 0.9,
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(14),
              boxShadow: [
                BoxShadow(
                  color: AppColors.black.withOpacity(0.1),
                  spreadRadius: 0,
                  blurRadius: 24,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ]),
          child: Row(
            children: [
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: _image != null ? FileImage(_image!) :
                      AssetImage('assets/default_avatar.png') as ImageProvider,
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: InkWell(
                        onTap: () => _pickImage(ImageSource.gallery),
                        child: CircleAvatar(
                          backgroundColor: Colors.teal,
                          radius: 20,
                          child: Icon(Icons.edit, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height:6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Claire Cooper',
                      //style: AppStyles.styleInterBold20
                      //  .copyWith(color: AppColors.darkSlateGray)
                      ),
                  SizedBox(height:6),

                  Text('claire.cooper@mail.com',
                      // style: AppStyles.styleInterRegular14
                      //     .copyWith(color: AppColors.white)
    ),
                ],
              ),
              SizedBox(height:6),

              GestureDetector(
                  onTap: () {},
                  // child: SvgPicture.asset(AppAssets.edit)
              )
            ],
          ),
        )
      ],
    );
  }
}
