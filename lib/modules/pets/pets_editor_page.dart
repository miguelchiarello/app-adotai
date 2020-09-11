import 'package:adotai/modules/pets/pets_controller.dart';
import 'package:adotai/shared/dialogs/loading_dialog.dart';
import 'package:adotai/shared/helpers/snackbar_helper.dart';
import 'package:adotai/shared/helpers/will_pop_helper.dart';
import 'package:adotai/shared/widgets/number_form_field.dart';
import 'package:adotai/shared/widgets/option_input_field.dart';
import 'package:adotai/shared/widgets/simple_text_form_field.dart';
import 'package:adotai/shared/widgets/submit_button.dart';
import 'package:flutter/material.dart';

class PetsEditorPage extends StatefulWidget {
  @override
  _PetsEditorPageState createState() => _PetsEditorPageState();
}

class _PetsEditorPageState extends State<PetsEditorPage> {
  final _formKey = GlobalKey<FormState>();
  final _controller = PetsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Novo pet para adoção')),
      body: WillPopScope(
        onWillPop: () => WillPopHelper.onBackPressed(context),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SimpleTextFormField(
                  label: 'Nome',
                  onSaved: _controller.setName,
                ),
                SimpleTextFormField(
                  label: 'Espécie',
                  onSaved: _controller.setSpecie,
                ),
                SimpleTextFormField(
                  label: 'Raça',
                  onSaved: _controller.setBreed,
                ),
                OptionInputField(
                  items: ['Macho', 'Fêmea'],
                  initial: _controller.gender,
                  onSelected: _controller.setGender,
                ),
                NumberFormField(
                  label: 'Idade',
                  onSaved: (value) => _controller.setAge(0),
                ),
                OptionInputField(
                  items: ['Pequeno', 'Médio', 'Grande'],
                  initial: _controller.size,
                  onSelected: _controller.setSize,
                ),
                OptionInputField(
                  items: ['Não', 'Sim'],
                  initial: _controller.castrated ? 'Sim' : 'Não',
                  onSelected: (text) => _controller.setCastrated(text == 'Sim'),
                ),
                SimpleTextFormField(
                  label: 'Personalidade',
                  onSaved: _controller.setNature,
                ),
                SimpleTextFormField(
                  label: 'História',
                  onSaved: _controller.setStory,
                ),
                SimpleTextFormField(
                  label: 'Chip de rastreio',
                  onSaved: (text) => _controller.setChip,
                ),
                SizedBox(height: 30),
                SubmitButton(
                  label: 'Salvar',
                  onTap: _onSave,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future _onSave() async {
    final state = _formKey.currentState;
    if (state.validate()) {
      state.save();
      LoadingDialog.show(context);
      await _controller.create().then((pet) {
        LoadingDialog.hide();
        Navigator.pop(context, pet);
      }).catchError((error) {
        LoadingDialog.hide();
        SnackBarHelper.showFailureMessage(
          context,
          title: 'Erro',
          message: error,
        );
      });
    }
  }
}
