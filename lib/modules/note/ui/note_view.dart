import 'package:flutter/material.dart';
import 'package:frontend_nyatet_app_flutter/utils/textformfield_custom.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import 'package:frontend_nyatet_app_flutter/utils/normal_button_custom.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key, required this.listNote});
  final ValueNotifier<List<String>> listNote;

  static const routeName = '/note';

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    super.initState();
    // Tambahkan listener untuk mendengarkan perubahan pada listTodo
    widget.listNote.addListener(_onListChanged);
  }

  @override
  void dispose() {
    // Bersihkan listener saat widget dihapus
    widget.listNote.removeListener(_onListChanged);
    super.dispose();
  }

  void _onListChanged() {
    // Panggil setState untuk merender ulang widget ketika listTodo berubah
    setState(() {});
  }

  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  final _formEditNote = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return widget.listNote.value.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.all(15.0),
            itemCount: widget.listNote.value.length,
            itemBuilder: (context, index) => Container(
              margin: (index == 0) ? null : const EdgeInsets.only(top: 10),
              child: ListTile(
                onTap: () async {
                  _titleController.text = widget.listNote.value[index];

                  await showModalBottomSheet(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(10),
                      ),
                    ),
                    context: context,
                    isScrollControlled: true,
                    builder: (context) => Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: Container(
                        padding: const EdgeInsets.all(15),
                        child: Form(
                          key: _formEditNote,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Edit Note",
                                style: GoogleFonts.quicksand(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              TextFormFieldCustom(
                                labelText: "Title",
                                controller: _titleController,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Title cannot be empty";
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10),
                              TextFormFieldCustom(
                                labelText: "Content",
                                controller: _contentController,
                                maxLines: 10,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                              const SizedBox(height: 10),
                              NormalButtonCustom(
                                title: 'Simpan Perubahan',
                                onTap: () {
                                  if (_formEditNote.currentState!.validate()) {
                                    Navigator.pop(context);
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );

                  _titleController.clear();
                  _contentController.clear();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                tileColor: HexColor("#b5f1e9"),
                title: Text(
                  widget.listNote.value[index],
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.quicksand(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  DateFormat('EEEE, dd MMMM yyyy HH:mm').format(DateTime.now()),
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                        padding: const EdgeInsets.all(15),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            NormalButtonCustom(title: "Selesai"),
                            SizedBox(height: 10),
                            NormalButtonCustom(title: "Edit"),
                            SizedBox(height: 10),
                            NormalButtonCustom(title: "Hapus"),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.more_horiz_rounded),
                ),
              ),
            ),
          )
        : isEmptyNote();
  }

  Column isEmptyNote() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Apa Agendamu Hari Ini?",
            style: GoogleFonts.quicksand(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Ketuk + untuk menambahkan catatan",
          style: GoogleFonts.quicksand(),
        ),
      ],
    );
  }
}
