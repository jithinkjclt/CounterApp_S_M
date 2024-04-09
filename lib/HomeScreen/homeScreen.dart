import 'package:flutter/material.dart';
import 'package:state_management/HomeScreen/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider(
      create: (context) => HomeCubit(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final cubit = context.read<HomeCubit>();
          return Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Text(
                cubit.counter.toString(),
                style: const TextStyle(fontSize: 35),
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 150,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        cubit.increment();
                      },
                      child: cubit.flag == true
                          ? const Icon(Icons.add)
                          : const Icon(Icons.minimize)),
                  const SizedBox(
                    width: 25,
                  )
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Text(
                cubit.change.toString(),
                style: const TextStyle(fontSize: 25, color: Colors.amber),
              ),
              const SizedBox(
                height: 100,
              ),
              IconButton(
                  onPressed: () {
                    cubit.chanager();
                  },
                  icon: const Icon(
                    Icons.remove_red_eye,
                    size: 40,
                  ))
            ],
          );
        },
      ),
    ));
  }
}
