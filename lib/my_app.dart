import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'logic/theme/theme_cubit.dart';
import 'utils/export_utilites.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<ThemeCubit>(
          create: (BuildContext context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeData>(
        builder: (BuildContext context, ThemeData state) {
          return CustomMaterial(
            state: state,
          );
        },
      ),
    );
  }
}

class CustomMaterial extends StatelessWidget {
  const CustomMaterial({required this.state});
  final ThemeData state;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Indcabs User',
      theme: state,
      debugShowCheckedModeBanner: false,
      // home: const LoginScreen(),
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
