import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/widgets/nu_input_field.dart';

class RechargeScreen extends StatelessWidget {
  RechargeScreen({super.key});

  final phoneInputTextController = MaskedTextController(
    mask: '(00) 00000-0000',
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height - 50,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(Icons.close, color: AppColors.secondaryText),
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
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 30),
              NuInputField(
                autoFocus: true,
                textInputType: TextInputType.number,
                controller: phoneInputTextController,
                hint: '(DDD) + Número',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
