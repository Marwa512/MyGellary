import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina/shared/bloc_observer.dart';

import 'layout/galleryLayout.dart';
import 'layout/gallerytabletLayout.dart';
import 'module/mobile/login_module/cubit/logincubit.dart';
import 'module/mobile/login_module/loginMobileScreen.dart';
import 'module/tablet/login_module/loginTabletScreen.dart';
import 'shared/cubit/cubit.dart';
import 'shared/network/remote/dio_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GalleryGetCubit()),
        BlocProvider(create: (context) => GalleryLoginCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Baloo',
          primarySwatch: Colors.grey,
        ),
        home: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.minWidth.toInt() <= 650) {
              return LoginMobileScreen();
            } else
              return LoginTabletScreen();
          },
        ),
      ),
    );
  }
}
