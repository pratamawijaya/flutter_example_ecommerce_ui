import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length,
          (index) => formErrorText(
                txtError: errors[index],
              )),
    );
  }

  Row formErrorText({String txtError}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/Error.svg",
          width: getProportionateScreenWidth(14),
          height: getProportionateScreenWidth(14),
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(txtError),
      ],
    );
  }
}
