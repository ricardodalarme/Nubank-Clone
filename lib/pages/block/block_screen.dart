import 'package:flutter/material.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/pages/block/widgets/expanded_button.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';

class BlockScreen extends StatelessWidget {
  const BlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 40),
          const Icon(
            NuIcons.ic_virtual_card_blocked,
            color: AppColors.secondaryText,
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'Você quer ',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(height: 1.8),
                children: const <TextSpan>[
                  TextSpan(
                    text: 'bloquear temporariamente ',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(text: 'o seu cartão?'),
                ],
              ),
            ),
          ),
          const SizedBox(height: 40),
          Container(height: 1, color: AppColors.line),
          Row(
            children: [
              ExpandedButton(
                'Cancelar',
                onTap: () => context.pop(),
                color: AppColors.secondaryText,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 1),
                width: 1,
                height: 62,
                color: AppColors.line,
              ),
              const ExpandedButton(
                'Bloquear',
                color: AppColors.primary,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
