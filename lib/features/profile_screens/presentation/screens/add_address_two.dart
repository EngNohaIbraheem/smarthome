
import 'package:flutter/material.dart';

import '../../../../core/widgets/custum_button.dart';
import '../widget/Address_form.dart';



class AddAddressScreenLocation extends StatefulWidget {
  @override
  State<AddAddressScreenLocation> createState() =>
      _AddAddressScreenLocationState();
}

class _AddAddressScreenLocationState extends State<AddAddressScreenLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffC2C2C2),
          title: Text('Add Address'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              AddressForm(),
              Spacer(),
              CustomButton(
                text: 'save',
                onPressed: () {},
              ),
            ],
          ),
        ));
    // );
  }
}
