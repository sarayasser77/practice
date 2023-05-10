import 'package:bloc/bloc.dart';
import 'package:testdarkmode/cubit/themestates.dart';

class ThemeCubit extends Cubit<ThemeStates>{
ThemeCubit():super(Initial());

  bool isOpened=false;
   ChangeTheme({required bool mode}){
     isOpened=mode;

     if(isOpened==false){
       emit(LightThemeState());
     }else{
       emit(DarkThemeState());
     }
   }
}