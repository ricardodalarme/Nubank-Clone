import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/icons.dart';

class AccountMenu extends StatelessWidget {
  final String title;
  final Widget information;
  final IconData icon;
  final Function()? onTap;

  const AccountMenu(this.title, this.information, this.icon, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: <Widget>[
              Icon(icon),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  SizedBox(height: 7),
                  information,
                ],
              ),
            ],
          ),
          IconButton(
            icon: Icon(NuIcons.abc_ic_go_search_api_material),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
