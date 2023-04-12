import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:promina/shared/component.dart';
import 'package:promina/shared/cubit/cubit.dart';
import 'package:promina/shared/cubit/states.dart';

class GallerytabLayout extends StatelessWidget {
  GallerytabLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/img/gellary.jpg",
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        BlocConsumer<GalleryGetCubit, GalleryGetStates>(
          listener: (context, state) {},
          builder: (context, state) {
            return Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            Text("Welcome",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.grey)),
                            Text("Mina",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.grey)),
                          ],
                        ),
                        const Spacer(),
                        const CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                                "https://th.bing.com/th/id/OIP.ZcuQIBc1S2Cd6ZTkFv_gTAHaFj?pid=ImgDet&rs=1")),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Spacer(),
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                15,
                                              )),
                                          child: Row(
                                            children: [
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Image.asset(
                                                "assets/img/Group 17.png",
                                              ),
                                              TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  "Log out",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            child: Container(
                              child: Row(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                15,
                                              )),
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/img/Group 16.png",
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              TextButton(
                                                onPressed: () {
                                                  GalleryGetCubit.get(context)
                                                      .uploadGallery();
                                                },
                                                child: Text(
                                                  "upload",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context, index) => galleryImage(),
                        separatorBuilder: (context, index) => SizedBox(
                              height: 20,
                            ),
                        itemCount: 5)
                  ]),
                ),
              ),
            );
          },
        ),
        if (GalleryGetCubit.get(context).upload)
          Padding(
            padding: const EdgeInsets.all(80),
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Container(
                      height: 250,
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(.1),
                          borderRadius: BorderRadius.circular(50)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 30),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 50,
                                width: 150,
                                child: MaterialButton(
                                  onPressed: (() {}),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.purple.shade50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/img/4.png",
                                      ),
                                      const Text("Gellary"),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 50,
                                width: 150,
                                child: MaterialButton(
                                  onPressed: (() {}),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.green.shade50,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/img/3.png",
                                      ),
                                      const Text("Camera"),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                      )),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
