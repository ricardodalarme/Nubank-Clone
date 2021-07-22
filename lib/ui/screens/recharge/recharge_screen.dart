import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:nubank_clone/ui/shared/nu_input_field.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class RechargeScreen extends StatelessWidget {
  final phoneInputTextController = MaskedTextController(
    mask: '(00) 00000-0000',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height - 50,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              icon: Icon(Icons.close, color: kSecondaryTextColor),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            child: Column(
              children: [
                Text(
                  'Qual número você quer recarregar?',
                  style: Theme.of(context).textTheme.headline5,
                ),
                SizedBox(height: 30),
                NuInputField(
                  autoFocus: true,
                  textInputType: TextInputType.number,
                  controller: phoneInputTextController,
                  hint: '(DDD) + Número',
                ),
              ],
            ),
          ),
        ));
  }
}
