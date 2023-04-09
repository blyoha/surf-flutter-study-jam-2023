import 'package:flutter/material.dart';

import 'features/ticket_storage/ticket_storage_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Async Tour',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TicketStoragePage(),
    );
  }
}
