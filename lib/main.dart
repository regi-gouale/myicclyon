import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myicclyon/firebase_options.dart';
import 'package:myicclyon/src/app.dart';
import 'package:myicclyon/src/services/event/event_bloc.dart';
import 'package:form_builder_validators/localization/l10n.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyICC Lyon',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.purple,
        textTheme: GoogleFonts.montserratTextTheme(),
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<EventBloc>(
            create: ((context) => EventBloc()),
            lazy: false,
          ),
        ],
        // child: Scaffold(
        //   body: Center(
        //     child: Text(
        //       getPerson(id: "6d2645f6bfc5078e5bd8c7719b4d8ed5").firstName,
        //     ),
        //   ),
        // ),
        child: const App(
          bnbLabelsAndIcons: {
            "Accueil": Icons.home,
            "Actions": Icons.call_to_action,
          },
          token: '6d2645f6bfc5078e5bd8c7719b4d8ed5',
        ),
      ),
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // supportedLocales: const [
      //   Locale("fr", "FR"),
      //   Locale("en", "GB"),
      // ],
    );
  }
}
