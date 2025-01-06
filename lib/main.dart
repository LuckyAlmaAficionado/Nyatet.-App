import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:frontend_nyatet_app_flutter/data/datasources/authentication_datasource.dart';
import 'package:frontend_nyatet_app_flutter/data/datasources/notes_datasource.dart';
import 'package:frontend_nyatet_app_flutter/data/datasources/todo_datasource.dart';
import 'package:frontend_nyatet_app_flutter/modules/login/bloc/login_bloc.dart';
import 'package:frontend_nyatet_app_flutter/modules/note/bloc/note_bloc.dart';
import 'package:frontend_nyatet_app_flutter/modules/todo/bloc/todo_bloc.dart';
import 'package:frontend_nyatet_app_flutter/modules/todo/ui/todo_history_view.dart';
import 'package:frontend_nyatet_app_flutter/service/hive.service.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:frontend_nyatet_app_flutter/modules/home/ui/home_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/login/ui/login_view.dart';
import 'package:frontend_nyatet_app_flutter/modules/settings/ui/settings_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HiveService().initializeHive();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(AuthenticationDatasource()),
        ),
        BlocProvider(create: (context) => NoteBloc(NotesDatasource())),
        BlocProvider(create: (context) => TodoBloc(TodoDatasource())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: false,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: HexColor("#0c756e")),
            backgroundColor: HexColor("#b5f1e9"),
            titleTextStyle: GoogleFonts.quicksand(
              color: HexColor("#0c756e"),
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        home: const LoginView(),
        routes: {
          HomeView.routeName: (context) => const HomeView(),
          LoginView.routeName: (context) => const LoginView(),
          SettingView.routeName: (context) => const SettingView(),
          TodoHistoryView.routeName: (context) => const TodoHistoryView(),
        },
        locale: const Locale('en', 'US'),
        supportedLocales: const [
          Locale('id', 'ID'),
        ],
        localizationsDelegates: const [
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
      ),
    );
  }
}
