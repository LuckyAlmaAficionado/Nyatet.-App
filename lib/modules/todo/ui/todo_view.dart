import 'package:flutter/material.dart';
import 'package:frontend_nyatet_app_flutter/utils/normal_button_custom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key, required this.listTodo});
  final ValueNotifier<List<String>> listTodo;

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  void initState() {
    super.initState();
    // Tambahkan listener untuk mendengarkan perubahan pada listTodo
    widget.listTodo.addListener(_onListChanged);
  }

  @override
  void dispose() {
    // Bersihkan listener saat widget dihapus
    widget.listTodo.removeListener(_onListChanged);
    super.dispose();
  }

  void _onListChanged() {
    // Panggil setState untuk merender ulang widget ketika listTodo berubah
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return widget.listTodo.value.isNotEmpty
        ? ListView.builder(
            padding: const EdgeInsets.all(15),
            itemCount: widget.listTodo.value.length,
            itemBuilder: (context, index) {
              return Container(
                margin: (index == 0) ? null : const EdgeInsets.only(top: 10),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  tileColor: HexColor("#b5f1e9"),
                  title: Text(
                    widget.listTodo.value[index],
                    style: GoogleFonts.quicksand(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
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
              );
            },
          )
        : isTodoEmpty();
  }

  Column isTodoEmpty() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Text(
            "Apa yang harus kamu lakukan hari ini?",
            style: GoogleFonts.quicksand(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          "Ketuk + untuk menambahkan catatan",
          style: GoogleFonts.quicksand(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
