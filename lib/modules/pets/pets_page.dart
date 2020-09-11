import 'package:adotai/modules/home/home_page.dart';
import 'package:adotai/modules/pets/pets_editor_page.dart';
import 'package:adotai/modules/pets/pets_card.dart';
import 'package:adotai/modules/pets/pets_controller.dart';
import 'package:adotai/shared/drawer/custom_drawer.dart';
import 'package:adotai/shared/helpers/navigator_helper.dart';
import 'package:adotai/shared/widgets/busy_list_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PetsPage extends StatefulWidget {
  @override
  _PetsPageState createState() => _PetsPageState();
}

class _PetsPageState extends State<PetsPage> {
  final _controller = PetsController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _initialize();
    });
  }

  Future _initialize() async {
    if (mounted) {
      _controller.fetch();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Adote um Pet')),
      drawer: CustomDrawer(3),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _create,
      ),
      body: WillPopScope(
        onWillPop: () => NavigatorHelper.pushReplacement(context, HomePage()),
        child: Observer(builder: (_) {
          return BusyListContainer(
            busy: _controller.busy,
            items: _controller.list,
            onRefresh: _controller.fetch,
            itemBuilder: (context, index) {
              final pet = _controller.list[index];
              return PetsCard(pet: pet);
            },
          );
        }),
      ),
    );
  }

  Future _create() async {
    final petCreated = await NavigatorHelper.push(context, PetsEditorPage());
    if (petCreated != null) {
      _controller.addPets(petCreated);
    }
  }
}
