import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:frontend_nyatet_app_flutter/modules/login/ui/login_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/settings/ui/settings_view.dart';
import 'package:frontend_nyatet_app_flutter/service/hive.service.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:frontend_nyatet_app_flutter/modules/note/ui/note_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/todo/ui/todo_view.dart';
import 'package:frontend_nyatet_app_flutter/utils/textformfield_custom.dart';
import 'package:hive/hive.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _titleValidator = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  int indexWidget = 0;

  late HiveService hiveService;

  // Gunakan ValueNotifier untuk membuat daftar todo yang dapat diberitahukan jika berubah
  ValueNotifier<List<String>> listTodoInput = ValueNotifier<List<String>>([]);
  ValueNotifier<List<String>> listNoteInput = ValueNotifier<List<String>>([]);

  late List<Widget> widgetList;
  List<String> widgetName = ["Todo List", "Note"];

  @override
  void initState() {
    super.initState();
    hiveService = HiveService();
    hiveService.initializeHive().then((_) {
      setState(() {});
    });
    widgetList = [
      TodoView(listTodo: listTodoInput),
      NoteView(listNote: listNoteInput),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerHome(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: HexColor("#0e766d")),
        title: Text(widgetName[indexWidget]),
      ),
      body: widgetList[indexWidget],
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: HexColor("#0e766d"),
        onPressed: () {
          var token = hiveService.get('token');
          print(token);
          // showDialog(
          //   context: context,
          //   builder: (_) => AlertDialog(
          //     title: Text(
          //       "Add Task",
          //       style: GoogleFonts.quicksand(
          //         fontSize: 16,
          //         fontWeight: FontWeight.w600,
          //       ),
          //     ),
          //     content: Form(
          //       key: _titleValidator,
          //       child: TextFormFieldCustom(
          //         controller: titleController,
          //         hintText: 'Input title here...',
          //         validator: (value) {
          //           if (value == null || value.isEmpty) {
          //             return 'Please enter some text';
          //           }
          //           return null;
          //         },
          //       ),
          //     ),
          //     actions: [
          //       TextButton(
          //         child: Text(
          //           "Cancel",
          //           style: GoogleFonts.outfit(
          //             color: Colors.red,
          //           ),
          //         ),
          //         onPressed: () {
          //           Navigator.pop(context);
          //           titleController.clear();
          //         },
          //       ),
          //       TextButton(
          //         child: Text(
          //           "Submit",
          //           style: GoogleFonts.outfit(
          //             color: HexColor("#0e766d"),
          //           ),
          //         ),
          //         onPressed: () {
          //           if (_titleValidator.currentState!.validate()) {
          //             Navigator.pop(context, true);

          //             if (indexWidget == 0) {
          //               setState(() {
          //                 listTodoInput.value = [
          //                   ...listTodoInput.value,
          //                   titleController.text,
          //                 ];
          //               });
          //             }

          //             if (indexWidget == 1) {
          //               log(indexWidget.toString());
          //               setState(() {
          //                 listNoteInput.value = [
          //                   ...listNoteInput.value,
          //                   titleController.text,
          //                 ];
          //               });
          //             }

          //             titleController.clear();
          //           }
          //         },
          //       ),
          //     ],
          //   ),
          // );
        },
        label: Text(
          "Add ${widgetName[indexWidget]}",
          style: GoogleFonts.quicksand(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        icon: const Icon(Icons.add),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Drawer DrawerHome() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: HexColor("#b5f1e9"),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  minRadius: 40,
                ),
                const SizedBox(height: 10),
                Text(
                  'Lucky Alma Aficionado Rigel',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              'Todo List',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              setState(() {
                indexWidget = 0;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Note',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              setState(() {
                indexWidget = 1;
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Setting',
              style: GoogleFonts.quicksand(
                fontWeight: FontWeight.w600,
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, SettingView.routeName);
            },
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.red.shade50,
                  Colors.red.shade50,
                  Colors.red.shade100,
                  Colors.red.shade100,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: ListTile(
              title: Text(
                'Logout',
                style: GoogleFonts.quicksand(
                  color: Colors.red,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(
                        'Logout?',
                        style: GoogleFonts.quicksand(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      content: Text(
                        'Apakah anda yakin ingin logout?',
                        style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      actions: [
                        TextButton(
                          child: Text(
                            'Cancel',
                            style: GoogleFonts.quicksand(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        TextButton(
                          child: Text(
                            'Logout',
                            style: GoogleFonts.quicksand(
                              color: Colors.red,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              LoginView.routeName,
                              (route) => false,
                            );
                            // Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
