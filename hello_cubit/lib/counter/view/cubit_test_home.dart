import 'package:cubit_counter/counter/cubit/test_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubitTestPage extends StatelessWidget {
  const CubitTestPage({super.key});

  final String newStateText = 'Hello from Cubit!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cubit Test'),
          centerTitle: true,
          elevation: 4.0,
        ),
        body: BlocBuilder<MyCubitTestClass, String>(
          builder: (context, text) => Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$text',
                  style: TextStyle(
                    fontSize: 27.0,
                  ),
                ),
                const SizedBox(height: 75.0),
                Material(
                  color: Colors.grey.shade300,
                  // borderRadius: BorderRadius.circular(3.0),
                  child: InkWell(
                    onTap: () => context
                        .read<MyCubitTestClass>()
                        .changeState(newStateText),
                    splashColor: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'change state',
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          // buildWhen: (previous, current) => previous != current,
        ));
  }
}
