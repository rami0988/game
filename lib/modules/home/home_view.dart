
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/modules/home/header/header_view.dart';
import '../../resources/color_manager.dart';

import '../../widgets/widgets.dart';
import 'home_cubite.dart';
import 'home_state.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return BlocProvider(
      create: (_) => HomeCubit(),
              child: BlocConsumer<HomeCubit, HomeState>(
            listener: (context, state) {

            },
             builder: ( context, state) { 
              var homeCubit = context.read<HomeCubit>();
              return Scaffold(
                      backgroundColor: ColorManager.blue6,
                      body: Column(
                        children: [
                          Expanded(
                            child: SingleChildScrollView(
                              child: BlocBuilder<HomeCubit, HomeState>(
                                builder: (context, state) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      color: ColorManager.blue6.withOpacity(0.9),
                                    ),
                                    // You can add more widgets here based on your state
                                  );
                                },
                              ),
                            ),
                          ),
                          Container(
                            // Set height dynamically based on screen size
                            height: MediaQuery.of(context).size.height * 0.7, // Adjusted to 30% of screen height
                            color: ColorManager.blue4,
                            child: Column(
                              children: [
                                Header(),
                                Divider(
                                height: 5,
                                thickness: 1.5,
                                color: ColorManager.blue6,
                                ),
                                


                              ],
                            ),
                          ),
                        ],
                      ),
                    );
             },
    )
    );
  }
}


