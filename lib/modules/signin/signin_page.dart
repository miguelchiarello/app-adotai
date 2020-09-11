import 'package:adotai/modules/home/home_page.dart';
import 'package:adotai/modules/password/password_page.dart';
import 'package:adotai/modules/signin/signin_controller.dart';
import 'package:adotai/modules/signup/signup_page.dart';
import 'package:adotai/shared/dialogs/loading_dialog.dart';
import 'package:adotai/shared/helpers/snackbar_helper.dart';
import 'package:adotai/shared/widgets/email_form_field.dart';
import 'package:adotai/shared/widgets/logotipo.dart';
import 'package:adotai/shared/widgets/password_form_field.dart';
import 'package:adotai/shared/widgets/submit_button.dart';
import 'package:adotai/shared/widgets/text_button.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  @override
  _SigninPageState createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = SigninController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(child: SizedBox()),
                Logotipo(
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(height: 40),
                EmailFormField(onSaved: _controller.setEmail),
                SizedBox(height: 20),
                PasswordFormField(
                  onSaved: _controller.setPassword,
                  onTap: _onPassword,
                ),
                SizedBox(height: 40),
                SubmitButton(
                  label: 'Login',
                  onTap: _onLogin,
                ),
                Expanded(child: SizedBox()),
                TextButton(
                  label: 'Não tem conta? Registrar',
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => SignupPage()),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _onPassword() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PasswordPage()),
    );

    if (result != null && result) {
      SnackBarHelper.showSuccessMessage(
        context,
        title: 'Senha',
        message: 'Um email foi enviado para você',
      );
    }
  }

  Future _onLogin() async {
    final state = _formKey.currentState;
    if (state.validate()) {
      state.save();
      LoadingDialog.show(context);
      await _controller.login().then((value) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => HomePage()),
        );
      }).catchError((error) {
        LoadingDialog.hide();
        SnackBarHelper.showFailureMessage(
          context,
          title: 'Login',
          message: error,
        );
      });
    }
  }
}
