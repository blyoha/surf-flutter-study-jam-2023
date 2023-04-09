import 'package:flutter/material.dart';

class TicketWidget extends StatefulWidget {
  const TicketWidget({Key? key}) : super(key: key);

  @override
  State<TicketWidget> createState() => _TicketWidgetState();
}

class _TicketWidgetState extends State<TicketWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 12.0,
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 26.0),
            child: Icon(Icons.airplane_ticket_outlined),
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // title text
                Text("Ticket 1"),
                // progress bar
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0),
                  child: LinearProgressIndicator(),
                ),
                // status
                Text(
                  "Ожидает начала загрузки",
                  style: TextStyle(fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          IconButton(
            padding: const EdgeInsets.only(left: 8.0),
            onPressed: () {},
            icon: const Icon(Icons.cloud_download_outlined),
          )
        ],
      ),
    );
  }
}
