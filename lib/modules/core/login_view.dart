import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game/resources/color_manager.dart';
import '../../widgets/widgets.dart';
import '../home/home_view.dart';
import 'login_cubit.dart';
import 'login_state.dart';


class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(),
        child: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<LoginCubit>();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {

        },
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Text("Enter your information please!!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height:  MediaQuery.of(context).size.height * 0.1 ), 
              BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return GestureDetector(
                    onTap: () => cubit.pickImage(),
                    child: CircleAvatar(
                      backgroundColor: ColorManager.blue1 ,
                      radius: 50,
                      backgroundImage: state.profilePic != null
                          ? FileImage(state.profilePic!)
                          : null, // No image, just use child
                      child: state.profilePic == null
                          ?  Icon(Icons.person, size: 50,color: ColorManager.blue3,) // Personal icon
                          : null,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),

              defaultFormField(type: TextInputType.name, label: 'Name',onChange: cubit.setName,prefix: Icons.person),
              const SizedBox(height: 20),

              defaultFormField(type: TextInputType.visiblePassword, label: 'Password',onChange: cubit.setPassword,prefix: Icons.lock),
              const SizedBox(height: 20),
              ElevatedButton(
                
                onPressed: () async {
                  cubit.state.name.isNotEmpty && cubit.state.password.isNotEmpty && cubit.state.profilePic != null
                      ?await Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => Home()),
                        )
                      : ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Please fill in all fields and select a profile picture.')),
                        );
                },
                style: ElevatedButton.styleFrom(backgroundColor: ColorManager.blue4),
                child:  Text('Login', style: TextStyle(color: ColorManager.white),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
