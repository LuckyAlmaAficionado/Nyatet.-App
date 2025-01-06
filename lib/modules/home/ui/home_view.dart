import 'dart:convert';
import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:frontend_nyatet_app_flutter/data/datasources/authentication_datasource.dart';
import 'package:frontend_nyatet_app_flutter/data/model/login_response_model.dart';
import 'package:frontend_nyatet_app_flutter/modules/login/ui/login_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/settings/ui/settings_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/todo/ui/todo_history_view.dart';
import 'package:frontend_nyatet_app_flutter/service/hive.service.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../../note/ui/note_view.dart';
import '../../todo/ui/todo_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  static const routeName = '/home';

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController titleController = TextEditingController();
  int indexWidget = 0;

  HiveService hiveService = HiveService();
  dynamic biodata;
  bool isComplete = false;

  late List<Widget> widgetList;
  List<String> widgetName = ["Todo List", "Note"];

  @override
  void initState() {
    super.initState();

    hiveService.initializeHive().then((value) {
      biodata = json.decode(hiveService.get('biodata'));
      isComplete = true;
      setState(() {});
    });

    widgetList = const [
      TodoView(),
      NoteView(),
    ];
  }

  List<Widget>? _selectedAction({required String widgetName}) {
    String lowerWN = widgetName.toLowerCase();

    if (lowerWN == 'todo list') {
      return [
        IconButton(
          onPressed: () {
            Navigator.pushNamed(context, TodoHistoryView.routeName);
          },
          icon: Icon(Icons.history_outlined, color: HexColor("#0c756e")),
        ),
      ];
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: isComplete ? DrawerHome(hiveService: hiveService) : null,
      appBar: AppBar(
        iconTheme: IconThemeData(color: HexColor("#0e766d")),
        title: Text(widgetName[indexWidget]),
        actions: _selectedAction(widgetName: widgetName[indexWidget]),
      ),
      body: widgetList[indexWidget],
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: HexColor("#0e766d"),
        onPressed: () {},
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
  Drawer DrawerHome({required HiveService hiveService}) {
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
                // Image.network(avatar),
                CircleAvatar(
                  minRadius: 40,
                  maxRadius: 40,
                  backgroundImage: NetworkImage(biodata['avatar'], scale: 1.0),
                ),
                const SizedBox(height: 10),
                Text(
                  biodata['name'] ?? 'Nobody',
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
                          onPressed: () async {
                            // call logout for delete from database
                            await AuthenticationDatasource().logout(
                              token: hiveService.get('token'),
                            );

                            // delete token from hive
                            hiveService.delete('token');
                            hiveService.delete('token_type');

                            // navigate to login
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
