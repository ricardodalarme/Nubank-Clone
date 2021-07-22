import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:nubank_clone/ui/shared/nu_input_field.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class ChargeScreen extends StatelessWidget {
  final moneyInputTextController = MoneyMaskedTextController(
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
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qual valor você quer receber?',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      SizedBox(height: 30),
                      NuInputField(
                        autoFocus: true,
                        textInputType: TextInputType.number,
                        controller: moneyInputTextController,
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Não especificar um valor >',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: kPrimaryColor),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
