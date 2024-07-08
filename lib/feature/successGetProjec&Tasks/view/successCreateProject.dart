// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osscam_app/core/constants/color_palet.dart';
import '../../../core/constants/app_style.dart';
import '../bloc/successget_bloc.dart';

class SuccessCreateProject extends StatelessWidget {
  const SuccessCreateProject({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SuccessgetBloc()
        ..add(SuccesGetProjectEvent())
        ..add(SuccesGetTasksEvent()),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: backGroundColor,
          body: Column(
            children: [
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 40, bottom: 40),
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  width: 402,
                  height: 51,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: praimaryColor),
                  child: Row(
                    children: [
                      Icon(
                        Icons.format_list_bulleted_rounded,
                        color: backGroundColor,
                      ),
                      const Spacer(),
                      Text(
                        "Project Name",
                        style: textTaskStyle,
                      ),
                      const Spacer(),
                      const Icon(Icons.delete)
                    ],
                  ),
                ),
              ),
              BlocBuilder<SuccessgetBloc, SuccessgetState>(
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const CircularProgressIndicator();
                  } else if (state is ErrorState) {
                    return const Text("there is an error");
                  } else if (state is SuccessgetProjectState) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      width: 370,
                      height: 225,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: boxdescription),
                      child: Text(state.getProjectModel.description!),
                    );
                  } else {
                    return const SizedBox();
                  }
                },
              ),
              const SizedBox(height: 10),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.only(left: 60),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: BlocBuilder<SuccessgetBloc, SuccessgetState>(
                      builder: (context, state) {
                        if (state is LoadingState) {
                          return const CircularProgressIndicator();
                        } else if (state is ErrorState) {
                          return const Text("There is an Error");
                        } else if (state is SuccessGetTasksState) {
                          return SizedBox(
                            width: 120,
                            height: 400,
                            child: ListView.builder(
                              itemCount: state.getTasksModel.length,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  margin:
                                      const EdgeInsets.only(top: 7, bottom: 7),
                                  // padding: const EdgeInsets.only(top: 2),
                                  height: 73,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(7),
                                      color: backGroundContanierColor),
                                  child: Column(
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(left: 4, top: 4),
                                        child: Row(
                                          children: [
                                            Text(
                                              "Baking",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 12),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 3),
                                        padding: const EdgeInsets.only(
                                            top: 2, left: 2),
                                        width: 100,
                                        height: 48,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(5),
                                            color: Colors.white),
                                        child:  Text(state.getTasksModel[index].taskDescription!),
                                      )
                                    ],
                                  ),
                                );
                              },
                            ),
                          );
                        }else {return const SizedBox();}
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: praimaryColor,
              child: Center(child: Image.asset("images/listproject.png")),
            ),
          ),
        );
      }),
    );
  }
}
