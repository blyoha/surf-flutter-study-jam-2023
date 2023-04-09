import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ModalSheet extends StatefulWidget {
  const ModalSheet({Key? key}) : super(key: key);

  @override
  State<ModalSheet> createState() => _ModalSheetState();
}

class _ModalSheetState extends State<ModalSheet> {
  final formKey = GlobalKey<FormState>();

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
          Form(
            key: formKey,
            child: TextFormField(
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
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(
                    color: Colors.redAccent,
                  ),
                ),
              ),
              validator: (value) {
                if (value!.isNotEmpty &&
                    RegExp(r"\bhttps?\S*pdf\b").hasMatch(value)) {
                  return null;
                } else {
                  return "Введите корректный URL";
                }
              },
            ),
          ),
          const Gap(12.0),
          MaterialButton(
            onPressed: () async {
              final isValid = formKey.currentState!.validate();

              if (isValid) {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Билет добавлен в список!"),
                  duration: Duration(seconds: 2),
                ));
                Navigator.pop(context);
              }
            },
            child: const Text("Добавить"),
          ),
        ],
      ),
    );
  }
}
