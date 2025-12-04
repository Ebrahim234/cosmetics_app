import 'package:cosmetics/core/logic/helper_method.dart';
import 'package:flutter/material.dart';

import '../../views/auth/create_account.dart';

class AppLoginOrAppRegister extends StatelessWidget {
  const AppLoginOrAppRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Text.rich(TextSpan(
        children: [
          TextSpan(text: "Don’t have an account?"),
          WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: TextButton(
                  style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 2)
                  ),
                  onPressed: (){
                    goTo(CreateAccountView());
                  }, child: Text("Register")))
        ]
      )),
    );
  }
}
