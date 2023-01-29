import 'package:app_kp_merch/app/utils/kp_theme.dart';
import 'package:flutter/material.dart';

class KpLargeButton extends StatelessWidget {
  const KpLargeButton(
    this.label, {
    this.icon,
    this.onPressed,
    super.key,
  });

  final String label;
  final IconData? icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(KpTheme.kDefaultPadding),
      child: SizedBox(
        width: double.infinity,
        child: _buildChild(),
      ),
    );
  }

  _buildChild() {
    if (icon != null) {
      return FilledButton.tonalIcon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
      );
    } else {
      FilledButton.tonal(
        onPressed: onPressed,
        child: Text(label),
      );
    }
  }
}
