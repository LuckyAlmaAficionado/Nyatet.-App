import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_nyatet_app_flutter/data/model/todo_history_response.model.dart';
import 'package:frontend_nyatet_app_flutter/modules/todo/bloc/todo_bloc.dart';
import 'package:frontend_nyatet_app_flutter/utils/loading_content.custom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  @override
  void initState() {
    super.initState();
    // Tambahkan listener untuk mendengarkan perubahan pada listTodo
    context.read<TodoBloc>().add(const TodoEvent.getAllTodoToday());
  }

  @override
  void dispose() {
    // Bersihkan listener saat widget dihapus
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoBloc, TodoState>(
      builder: (context, state) {
        return state.maybeWhen(
          loadedTodoToday: (value) {
            return ListView.builder(
              itemCount: value.length,
              itemBuilder: (context, index) {
                Todo todo = value[index];
                return Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: ListTile(
                      tileColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      title: Text(
                        todo.content!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                      subtitle: Text(
                        DateFormat('EEEE, dd MMM yyyy HH:mm', 'id_ID')
                            .format(todo.createdAt!),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                          fontSize: 12,
                        ),
                      ),
                      trailing: PopupMenuButton(
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem(
                                value: 'selesai',
                                child: Text(
                                  'Selesai',
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            PopupMenuItem(
                                value: 'edit',
                                child: Text(
                                  'Edit',
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                            PopupMenuItem(
                                value: 'delete',
                                child: Text(
                                  'Hapus',
                                  style: GoogleFonts.quicksand(
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                          ];
                        },
                      )),
                );
              },
            );
          },
          loading: () => loadingContent,
          error: (error) => Center(
            child: Text(
              error,
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          orElse: () => const Center(child: Text('No Content')),
        );
      },
      listener: (context, state) => state.maybeWhen(
        orElse: () {},
      ),
    );
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
