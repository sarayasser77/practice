import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testdarkmode/core/global/dark.dart';
import 'package:testdarkmode/core/global/light.dart';
import 'package:testdarkmode/cubit/themestates.dart';
import 'package:testdarkmode/screens/homescreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'cubit/themecubit.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: ( context, child) {
        return BlocProvider(
          create:(ctx)=> ThemeCubit(),
          child: BlocConsumer<ThemeCubit,ThemeStates>(
              builder: (ctx,state){
                return  MaterialApp(
                  theme: LightTheme(),
                  darkTheme: DarkTheme(),

                  themeMode:state is Initial ||state is LightThemeState?ThemeMode.light:ThemeMode.dark,
                  home: const HomeScreen(),
                );
              },
              listener: (context,state){}),
        );



      },

    );
  }
}

