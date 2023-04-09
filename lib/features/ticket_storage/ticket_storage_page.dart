import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/widgets/ticket_widget.dart';

import 'widgets/modal_sheet_widget.dart';

/// Экран “Хранения билетов”.
class TicketStoragePage extends StatefulWidget {
  const TicketStoragePage({Key? key}) : super(key: key);

  @override
  State<TicketStoragePage> createState() => _TicketStoragePageState();
}

class _TicketStoragePageState extends State<TicketStoragePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Добавить"),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            builder: (context) => const ModalSheet(),
          );
        },
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => const TicketWidget(),
      ),
    );
  }

  buildEmptyView() => const Center(
        child: Text("Здесь пока ничего нет"),
      );

  buildListView() {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, index) => const TicketWidget(),
    );
  }

  buildAppBar() => AppBar(
        title: const Text("Хранение билетов"),
        centerTitle: false,
      );
}
