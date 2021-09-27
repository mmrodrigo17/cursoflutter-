import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:qr_reader/pages/direcciones_page.dart';
import 'package:qr_reader/pages/mapas_pages.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/widgets/custon_navigatorbar.dart';
import 'package:qr_reader/widgets/scann_buttonbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: unnecessary_const
      appBar: AppBar(
        title: Text('Historial'),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.delete_forever),
          ),
        ],
      ),
      body: _HomePageBody(),
      //body: DireccionesPage(),
      bottomNavigationBar: CustonNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final int currenIndex = uiProvider.selectedMenuOpt;

    switch (currenIndex) {
      case 0:
        return MapasPage();
      case 1:
        return DireccionesPage();

      default:
        return MapasPage();
    }
  }
}
