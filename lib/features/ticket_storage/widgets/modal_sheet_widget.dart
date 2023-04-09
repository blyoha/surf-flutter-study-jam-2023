import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ModalSheet extends StatefulWidget {
  const ModalSheet({Key? key}) : super(key: key);

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        children: [
          TextFormField(
            controller: textController,
            decoration: InputDecoration(
              label: const Text("Введите URL"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                    // color: Colors.amberAccent,
                    ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
                borderSide: const BorderSide(
                  color: Colors.redAccent,
                ),
              ),
            ),
            validator: validateUrl,
          ),
          const Gap(12.0),
          MaterialButton(
            onPressed: () {},
            child: const Text("Добавить"),
          ),
        ],
      ),
    );
  }

  String? validateUrl(String? value) {
    return null;
  }
}
