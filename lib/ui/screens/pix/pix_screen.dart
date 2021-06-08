import 'package:flutter/material.dart';
import 'package:mdi/mdi.dart';
import 'package:nubank_clone/core/router.dart';
import 'package:nubank_clone/ui/screens/pix/components/pix_menu.dart';
import 'package:nubank_clone/ui/shared/label_button.dart';
import 'package:nubank_clone/ui/theme/colors.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class PixScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height - 50,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
              onPressed: () => MyRouter.popPage(context),
              icon: Icon(NuIcons.close, color: kSecondaryTextColor)),
          SizedBox(height: 15),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/pix.jpg',
                    height: 150,
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Minha área Pix',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  SizedBox(height: 10),
                  Text(
                      'Tudo o que você precisa para pagar, transferir ou cobrar.',
                      style: Theme.of(context).textTheme.subtitle1),
                  SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      LabelButton('Pagar', Mdi.arrangeSendToBack),
                      LabelButton('Transferir', Mdi.cubeSend),
                      LabelButton('Cobrar', Mdi.messageAlertOutline),
                    ],
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          Container(height: 1, color: kLineColor),
          Column(
            children: [
              PixMenu('Minhas chaves', Mdi.keyChain),
              PixMenu('Meu limite Pix', Mdi.tuneVariant),
              PixMenu('Me ajuda', Mdi.helpCircleOutline),
            ],
          ),
        ],
      ),
    );
  }
}
