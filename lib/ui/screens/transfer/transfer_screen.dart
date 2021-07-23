import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:nubank_clone/core/constants.dart';
import 'package:nubank_clone/ui/shared/nu_input_field.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class TransferScreen extends StatelessWidget {
  final valueTextController = MoneyMaskedTextController(
    leftSymbol: r'R$ ',
    decimalSeparator: ',',
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 50,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(Icons.close, color: kSecondaryTextColor),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.qr_code, color: kPrimaryColor),
              onPressed: () {},
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Qual é o valor da transferência?',
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 15),
              RichText(
                text: TextSpan(
                  text: 'Saldo disponível em conta ',
                  style: Theme.of(context).textTheme.bodyText2,
                  children: [
                    TextSpan(
                      text: 'R\$ $kBalance',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32),
              NuInputField(
                autoFocus: true,
                textInputType: TextInputType.number,
                controller: valueTextController,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
