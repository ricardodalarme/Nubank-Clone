import 'package:flutter/material.dart';
import 'package:nubank_clone/ui/theme/colors.dart';

class TextCard extends StatelessWidget {
  final String text;
  final String highlightText;
  final VoidCallback onTap;

  const TextCard({
    Key? key,
    required this.text,
    required this.highlightText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 14),
      width: 270,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: kLabelButtonColor),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              text: TextSpan(
                  text: text,
                  style: Theme.of(context).textTheme.bodyText2,
                  children: [
                    TextSpan(
                        text: highlightText,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: kPrimaryColor))
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
