import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_nyatet_app_flutter/modules/todo/bloc/todo_bloc.dart';
import 'package:frontend_nyatet_app_flutter/utils/loading_content.custom.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import '../../../data/model/todo_history_response.model.dart';

class TodoHistoryView extends StatelessWidget {
  static const routeName = '/todo_history_login';
  const TodoHistoryView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<TodoBloc>().add(const TodoEvent.getAllTodoHistory());
    return Scaffold(
      appBar: AppBar(
        title: const Text('History Todo List'),
      ),
      body: WillPopScope(
        onWillPop: () async {
          context.read<TodoBloc>().add(const TodoEvent.getAllTodoToday());
          return true;
        },
        child: BlocConsumer<TodoBloc, TodoState>(
          builder: (context, state) => state.maybeWhen(
            loadedTodoHistory: (value) => (value!.isEmpty)
                ? const Center(child: Text('No History'))
                : ListView.builder(
                    padding: const EdgeInsets.all(10),
                    itemCount: value.entries.first.key.length,
                    itemBuilder: (context, index) {
                      String date = value.entries.elementAt(index).key;
                      List<Todo> todos = value.entries.elementAt(index).value;

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: HexColor("#b5f1e9"),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              DateFormat('EEEE, dd MMMM yyyy', 'id_ID')
                                  .format(DateTime.parse(date)),
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          ...todos.map(
                            (e) => Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: ListTile(
                                tileColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                title: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      e.content!,
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                    ),
                                    const SizedBox(height: 5),
                                    Text(
                                      DateFormat('EEEE, dd MMM yyyy HH:mm',
                                              'id_ID')
                                          .format(e.createdAt!),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
            loading: () => loadingContent,
            orElse: () => Center(
              child: Text('No Content',
                  style: GoogleFonts.quicksand(fontWeight: FontWeight.w600)),
            ),
          ),
          listener: (context, state) => state.maybeWhen(
            orElse: () {},
          ),
        ),
      ),
    );
  }
}
