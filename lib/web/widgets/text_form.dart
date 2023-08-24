import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:personalportfolio/web/widgets/widgets.dart';

class TextForm extends StatelessWidget {
  final String header;
  final String hint;
  final int lineCount;
  final double width;
  const TextForm({
    Key? key,
    required this.header,
    required this.hint,
    required this.lineCount,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Sans(text: header, size: 16, fontWeight: FontWeight.normal),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: width,
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLines: lineCount,
            validator: (value) {
              if (value!.isEmpty) {
                return "Fill your field";
              }
            },
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red[900]!),
                ),
                focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.red,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15)),
                hintStyle: GoogleFonts.poppins(fontSize: 14),
                hintText: hint),
          ),
        ),
      ],
    );
  }
}
