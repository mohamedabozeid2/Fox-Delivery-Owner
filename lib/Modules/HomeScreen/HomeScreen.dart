import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fox_delivery_owner/shared/cubit/cubit.dart';
import 'package:fox_delivery_owner/shared/cubit/states.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FoxCubit, FoxStates>(
      listener: (context, state){},
      builder: (context, state){
        return Scaffold(
          body: FoxCubit.get(context).screen[FoxCubit.get(context).currentIndex],
          bottomNavigationBar: BottomNavigationBar(
              items: FoxCubit.get(context).bottomItems,
            currentIndex: FoxCubit.get(context).currentIndex,
            onTap: (value){
              FoxCubit.get(context).changeBottomNavBar(value);
            },

          ),
        );
      },
    );
  }
}