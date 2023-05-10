import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:testdarkmode/cubit/themecubit.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit cubit=BlocProvider.of(context);
   return Scaffold(
     appBar: AppBar(
       actions: [
         Switch(value: cubit.isOpened, onChanged: (mode){
           cubit.ChangeTheme(mode: mode);
         })
       ],
     ),
     body: SizedBox(
       width: double.infinity,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Spacer(flex: 1,),
           Container(
             alignment: Alignment.center,
             height: 200.h,
             width: 150.w,
            child: Text(
              'sara',
              style:   Theme.of(context).textTheme.labelLarge!,
            ),
               color: Colors.grey.shade900,

           ),
           Spacer(flex: 1),
           Text('Sara',style:   Theme.of(context).textTheme!.labelLarge!.copyWith(
             fontSize: 45.sp
           ),),
           Spacer(flex: 2,)
         ],
       ),
     ),
   );
  }
}
