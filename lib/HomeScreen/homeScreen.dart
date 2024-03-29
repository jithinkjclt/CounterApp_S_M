import 'package:flutter/material.dart';
import 'package:state_management/HomeScreen/home_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeCubit(context),
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
                        child: cubit.flag
                            ? Icon(Icons.add)
                            : Icon(Icons.minimize)),
                    // const Spacer(),
                    // ElevatedButton(
                    //     onPressed: () {
                    //       cubit.decrement();
                    //     },
                    //     child: const Icon(Icons.minimize)),
                    const SizedBox(
                      width: 25,
                    )
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
