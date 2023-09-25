import 'package:amr_portfolio/presentation/widgets/animated_positioned_text.dart';
import 'package:amr_portfolio/values/values.dart';
import 'package:flutter/material.dart';

const double spacing = 20;

class TechnologySection extends StatelessWidget {
  const TechnologySection({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return _Skills(texts: Data.otherTechnologies,);
  }
}


class _Skills extends StatelessWidget {
  final List<String> texts;

  const _Skills({Key? key, required this.texts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        spacing: 7,
        runSpacing: 7,
        children: texts
            .map(
              (text) => Container(
            padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: theme.colorScheme.secondary.withOpacity(.05),
            ),
            child: Text(
              text,
              style: theme.textTheme.headlineSmall!.copyWith(
                  fontSize: 14,
                fontWeight: FontWeight.w400
              ),
            ),
          ),
        )
            .toList(),
      ),
    );
  }
}

