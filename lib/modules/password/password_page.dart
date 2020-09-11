import 'package:adotai/modules/password/password_controller.dart';
import 'package:adotai/shared/dialogs/loading_dialog.dart';
import 'package:adotai/shared/helpers/snackbar_helper.dart';
import 'package:adotai/shared/widgets/email_form_field.dart';
import 'package:adotai/shared/widgets/logotipo.dart';
import 'package:adotai/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class PasswordPage extends StatefulWidget {
  @override
  _PasswordPageState createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  final _formKey = GlobalKey<FormState>();

  final _controller = PasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Voltar',
          style: TextStyle(
            color: Theme.of(context).primaryColor,
          ),
        ),
        iconTheme: IconThemeData(
          color: Theme.of(context).primaryColor,
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 0,
      ),
      body: Container(
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
              Text(
                'Por favor, informe o E-mail associado a sua conta, que enviaremos um link para o mesmo com as instruções para troca de sua senha.',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              EmailFormField(onSaved: _controller.setEmail),
              SizedBox(height: 40),
              SubmitButton(
                label: 'Enviar',
                onTap: _onSendPasswordResetEmail,
              ),
              Expanded(child: SizedBox()),
            ],
          ),
        ),
      ),
    );
  }

  Future _onSendPasswordResetEmail() async {
    final state = _formKey.currentState;
    if (state.validate()) {
      state.save();
      LoadingDialog.show(context);
      await _controller.sendPasswordResetEmail().then((value) {
        LoadingDialog.hide();
        Navigator.of(context).pop(true);
      }).catchError((error) {
        LoadingDialog.hide();
        SnackBarHelper.showFailureMessage(
          context,
          title: 'Senha',
          message: error,
        );
      });
    }
  }
}
