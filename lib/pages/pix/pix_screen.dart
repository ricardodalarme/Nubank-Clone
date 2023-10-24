import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank_clone/constants/app_colors.dart';
import 'package:nubank_clone/constants/assets.gen.dart';
import 'package:nubank_clone/constants/nu_icons.dart';
import 'package:nubank_clone/pages/pix/widgets/pix_menu.dart';
import 'package:nubank_clone/utils/extensions/router_context_extension.dart';
import 'package:nubank_clone/widgets/label_button.dart';

class PixScreen extends StatelessWidget {
  const PixScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () => context.pop(),
            icon: const Icon(NuIcons.close, color: AppColors.secondaryText),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Assets.images.pix.image(
                    height: 150,
                  ),
                  const SizedBox(height: 30),
                  Text(
                    'Minha área Pix',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Tudo o que você precisa para pagar, transferir ou cobrar.',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LabelButton(
                        'Pagar',
                        MdiIcons.arrangeSendToBack,
                        onPressed: () {},
                      ),
                      LabelButton(
                        'Transferir',
                        MdiIcons.cubeSend,
                        onPressed: () {},
                      ),
                      LabelButton(
                        'Cobrar',
                        MdiIcons.messageAlertOutline,
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Container(height: 1, color: AppColors.line),
          const Column(
            children: [
              PixMenu('Minhas chaves', MdiIcons.keyChain),
              PixMenu('Meu limite Pix', MdiIcons.tuneVariant),
              PixMenu('Me ajuda', MdiIcons.helpCircleOutline),
            ],
          ),
        ],
      ),
    );
  }
}
