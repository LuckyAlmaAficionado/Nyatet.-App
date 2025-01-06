import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_nyatet_app_flutter/data/model/notes_response.model.dart';
import 'package:frontend_nyatet_app_flutter/utils/loading_content.custom.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../bloc/note_bloc.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});

  static const routeName = '/note';

  @override
  State<NoteView> createState() => _NoteViewState();
}

class _NoteViewState extends State<NoteView> {
  @override
  void initState() {
    super.initState();
    context.read<NoteBloc>().add(const NoteEvent.getAllNotes());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NoteBloc, NoteState>(
      listener: (context, state) {
        state.maybeWhen(
          orElse: () {},
          error: (e) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(e),
              ),
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(child: Text('Terjadi Kesalahan')),
          loading: () => loadingContent,
          loaded: (notes) {
            if (notes.isEmpty) return isEmptyNote();

            return ListView.builder(
              itemCount: notes.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (context, index) {
                Note note = notes[index];
                return Container(
                  margin: (index == 0) ? null : const EdgeInsets.only(top: 10),
                  child: ListTile(
                    tileColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    title: Text(
                      note.title!,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    subtitle: Text(
                      DateFormat('EEEE, dd MMM yyyy HH:mm', 'id_ID')
                          .format(note.createdAt!),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    trailing: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(100),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.more_vert_outlined),
                      ),
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
    // return widget.listNote.value.isNotEmpty
    //     ? ListView.builder(
    //         padding: const EdgeInsets.all(15.0),
    //         itemCount: widget.listNote.value.length,
    //         itemBuilder: (context, index) => Container(
    //           margin: (index == 0) ? null : const EdgeInsets.only(top: 10),
    //           child: ListTile(
    //             onTap: () async {
    //               Note note = widget.listNote.value[index];

    //               await showModalBottomSheet(
    //                 shape: const RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.vertical(
    //                     top: Radius.circular(10),
    //                   ),
    //                 ),
    //                 context: context,
    //                 isScrollControlled: true,
    //                 builder: (context) => Padding(
    //                   padding: EdgeInsets.only(
    //                       bottom: MediaQuery.of(context).viewInsets.bottom),
    //                   child: Container(
    //                     padding: const EdgeInsets.all(15),
    //                     child: Form(
    //                       key: _formEditNote,
    //                       child: Column(
    //                         mainAxisSize: MainAxisSize.min,
    //                         children: [
    //                           Text(
    //                             "Edit Note",
    //                             style: GoogleFonts.quicksand(
    //                               fontSize: 16,
    //                               fontWeight: FontWeight.bold,
    //                             ),
    //                           ),
    //                           const SizedBox(height: 10),
    //                           TextFormFieldCustom(
    //                             labelText: "Title",
    //                             controller: _titleController,
    //                             validator: (value) {
    //                               if (value!.isEmpty) {
    //                                 return "Title cannot be empty";
    //                               }
    //                               return null;
    //                             },
    //                           ),
    //                           const SizedBox(height: 10),
    //                           TextFormFieldCustom(
    //                             labelText: "Content",
    //                             controller: _contentController,
    //                             maxLines: 10,
    //                             validator: (value) {
    //                               if (value!.isEmpty) {
    //                                 return 'Please enter some text';
    //                               }
    //                               return null;
    //                             },
    //                           ),
    //                           const SizedBox(height: 10),
    //                           NormalButtonCustom(
    //                             title: 'Simpan Perubahan',
    //                             onTap: () {
    //                               if (_formEditNote.currentState!.validate()) {
    //                                 Navigator.pop(context);
    //                               }
    //                             },
    //                           ),
    //                         ],
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               );

    //               _titleController.clear();
    //               _contentController.clear();
    //             },
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //             tileColor: HexColor("#b5f1e9"),
    //             title: Text(
    //               widget.listNote.value[index].title!,
    //               overflow: TextOverflow.ellipsis,
    //               style: GoogleFonts.quicksand(
    //                 fontSize: 16,
    //                 fontWeight: FontWeight.w600,
    //               ),
    //             ),
    //             subtitle: Text(
    //               DateFormat('EEEE, dd MMMM yyyy HH:mm').format(DateTime.now()),
    //               overflow: TextOverflow.ellipsis,
    //               style: GoogleFonts.quicksand(
    //                 fontWeight: FontWeight.w600,
    //                 fontSize: 12,
    //               ),
    //             ),
    //             trailing: IconButton(
    //               onPressed: () {
    //                 showModalBottomSheet(
    //                   context: context,
    //                   builder: (context) => Container(
    //                     padding: const EdgeInsets.all(15),
    //                     child: const Column(
    //                       mainAxisSize: MainAxisSize.min,
    //                       children: [
    //                         NormalButtonCustom(title: "Selesai"),
    //                         SizedBox(height: 10),
    //                         NormalButtonCustom(title: "Edit"),
    //                         SizedBox(height: 10),
    //                         NormalButtonCustom(title: "Hapus"),
    //                       ],
    //                     ),
    //                   ),
    //                 );
    //               },
    //               icon: const Icon(Icons.more_horiz_rounded),
    //             ),
    //           ),
    //         ),
    //       )
    //     : isEmptyNote();
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
