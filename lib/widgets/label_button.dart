import 'package:flutter/material.dart';
import 'package:nubank_clone/theme/colors.dart';

class LabelButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final Function()? onPressed;
  final String? tag;

  const LabelButton(
    this.label,
    this.icon, {
    required this.onPressed,
    this.tag,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      width: 82,
      child: Column(
        children: [
          Stack(
            children: [
              ElevatedButton(
                onPressed: onPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: kLabelButtonColor,
                  shape: const CircleBorder(),
                  fixedSize: const Size(72, 72),
                  elevation: 0,
                ),
                child: Icon(
                  icon,
                  color: kTextColor,
                ),
              ),
              if (tag != null)
                Positioned(
                  bottom: 0,
                  right: 18,
                  left: 18,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: kPrimaryColor,
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 2, vertical: 1),
                    child: Text(
                      tag!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                )
            ],
          ),
          const SizedBox(height: 12),
          Text(
            label,
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(fontWeight: FontWeight.w500, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
