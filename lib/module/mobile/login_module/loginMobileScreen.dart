// ignore_for_file: must_be_immutable

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:promina/layout/galleryLayout.dart';
import '../../../layout/gallerytabletLayout.dart';
import '../../../shared/component.dart';
import 'cubit/logincubit.dart';
import 'cubit/loginstate.dart';

class LoginMobileScreen extends StatelessWidget {
  LoginMobileScreen({super.key});
  var userController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/img/log in.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        BlocConsumer<GalleryLoginCubit, GalleryLoginStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
              ),
              body: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("My",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.black)),
                      Text("Gellary",
                          style: Theme.of(context)
                              .textTheme
                              .headline3!
                              .copyWith(color: Colors.black)),
                      const SizedBox(
                        height: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: ClipRRect(
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                            child: Container(
                                height: 400,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(.1),
                                    borderRadius: BorderRadius.circular(30)),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("LOG IN",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5!
                                              .copyWith(color: Colors.black)),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      defaultTextForm(
                                        controller: userController,
                                        label: "User Name",
                                        type: TextInputType.name,
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      defaultTextForm(
                                        label: 'Password',
                                        controller: passwordController,
                                        type: TextInputType.visiblePassword,
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade400,
                                            borderRadius: BorderRadius.circular(
                                              15,
                                            )),
                                        child: TextButton(
                                          onPressed: () {
                                            GalleryLoginCubit.get(context)
                                                .userLogin(
                                                    email: userController
                                                        .toString(),
                                                    password: passwordController
                                                        .toString());
                                            navigateTo(
                                                context, GalleryLayout());
                                          },
                                          child: const Text(
                                            "SUBMIT",
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
