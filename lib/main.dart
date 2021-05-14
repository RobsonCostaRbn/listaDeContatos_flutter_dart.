import 'package:flutter/material.dart';
import 'package:lista_contatos/provider/user.dart';
import 'package:lista_contatos/routes/app_routes.dart';
import 'package:lista_contatos/views/user_form.dart';
import 'package:lista_contatos/views/user_list.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
  }

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider (
          create: (ctx) => Users(),
         )
      ],
      child: MaterialApp(
        title: 'Lista de contatos',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        //home: UserList(),
        routes: {
          AppRoutes.HOME: (_) => UserList(),
          AppRoutes.USER_FORM: (_) => UserForm()
        },
      ),
    );
  }
}

