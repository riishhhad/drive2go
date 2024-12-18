import 'package:drive2go/Bloc/Allcars/allcars_bloc.dart';
import 'package:drive2go/Bloc/Buycar/buycar_bloc.dart';
import 'package:drive2go/Bloc/Signup/signup_bloc.dart';
import 'package:drive2go/Bloc/mycar/mycar_bloc.dart';
import 'package:drive2go/Bloc/search/search_bloc.dart';
import 'package:drive2go/Bloc/signin/signin_bloc.dart';
import 'package:drive2go/Ui/bottomnavigation.dart';
import 'package:drive2go/Ui/intro.dart';
import 'package:drive2go/Ui/sign%20up.dart';
import 'package:drive2go/Ui/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Bloc/nearby/nearby_bloc.dart';

TextEditingController pickuplocationcontroller = TextEditingController();
TextEditingController returnlocationcontroller = TextEditingController();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return
            BlocProvider(
              create: (context) => SearchBloc(),
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) => SignupBloc(),
                  ),
                  BlocProvider(
                    create: (context) => SigninBloc(),
                  ),
                  BlocProvider(
                    create: (context) => NearbyBloc(),
                  ),
                ],
                child: BlocProvider(
                  create: (context) => AllcarsBloc(),
                  child: BlocProvider(
                    create: (context) => BuycarBloc(),
                    child: BlocProvider(
                      create: (context) => MycarBloc(),
                      child: MaterialApp(
                          title: 'Flutter Demo',
                          debugShowCheckedModeBanner: false,
                          theme: ThemeData(
                            // This is the theme of your application.
                            //
                            // TRY THIS: Try running your application with "flutter run". You'll see
                            // the application has a purple toolbar. Then, without quitting the app,
                            // try changing the seedColor in the colorScheme below to Colors.green
                            // and then invoke "hot reload" (save your changes or press the "hot
                            // reload" button in a Flutter-supported IDE, or press "r" if you used
                            // the command line to start the app).
                            //
                            // Notice that the counter didn't reset back to zero; the application
                            // state is not lost during the reload. To reset the state, use hot
                            // restart instead.
                            //
                            // This works for code too, not just values: Most code changes can be
                            // tested with just a hot reload.
                            colorScheme: ColorScheme.fromSeed(
                                seedColor: Colors.deepPurple),
                            useMaterial3: true,
                          ),
                          home: bottomnaviation()
                      ),
                    ),
                  ),
                ),
              ),
            );
        }
    );
  }
}