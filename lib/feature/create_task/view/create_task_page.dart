// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osscam_app/core/constants/color_palet.dart';
import 'package:osscam_app/core/constants/app_string.dart';
import '../../../core/constants/app_style.dart';
import '../../../models/request/create_task_model.dart';
import '../../create_project/service/createProject_service.dart';
import '../../successGetProjec&Tasks/view/successCreateProject.dart';
import '../bloc/create_task_bloc.dart';

class CreateTask extends StatefulWidget {
  const CreateTask({super.key});

  @override
  State<CreateTask> createState() => _CreateTaskState();
}

class _CreateTaskState extends State<CreateTask> {
  TextEditingController taskController = TextEditingController();
//!
//   @override
//   void initState() {
//     super.initState();
// //! العدد بعدد مرات الضغط على زر الadd
// //! الغلط كان انو كل ماعم يزيد الكاونتر مو حاطتو بست ستيت

//     // for (int i = 0; i <= counter.value; i++) {
//     //   listTasksControler.add(TextEditingController());
//     // }
//   }

  // @override
  // void dispose() {
  //   for (final controller in listTasksControler) {
  //     controller.dispose();
  //   }
  //   super.dispose();
  // }

  List<TextEditingController> listTasksControler = [];
  // List<String> listTextinController=[];
  ValueNotifier<int> counter = ValueNotifier(0);
  //! جربت انو استعمل تابع بخزن وبفضي صار يفضو كلن
  //  storvalue() {
  //   String textinController = taskController.text.trim();
  //   if (textinController.isNotEmpty) {
  //     setState(
  //       () {
  //        listtasksControler.add(textinController);
  //         //taskController.clear();
  //       },
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateTaskBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: backGroundColor,
          body: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Form(
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset("images/logoo.png")),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 25, bottom: 40),
                      child: Text(
                        TASKS,
                        style: textTaskStyle,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Row(
                      children: [
                        const Spacer(),
                        Container(
                          padding:
                              const EdgeInsets.only(left: 5, top: 14, right: 5),
                          height: 70,
                          width: 234,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: backGroundContanierColor),
                          child: TextFormField(
                            // onSaved: (newValue) {
                            //   setState(() {
                            //     newValue = textinController;
                            //     tasksControler.add(newValue);
                            //   });
                            // },
                            readOnly: true,
                            //controller: taskController,
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: checkTextColor,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                hintText: TASKNAME,
                                hintStyle: hintTextStyle),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: InkWell(
                              onTap: () {
                                setState(
                                  () {
                                    listTasksControler
                                        .add(TextEditingController());
                                    counter.value++;
                                    for (int i = 0;
                                        i <= counter.value - 2;
                                        i++) {
                                      print(
                                          'Text Field ${i + 1}: ${listTasksControler[i].text}');
                                      // listTasksControler.clear();
                                    }
                                    // for (int i = 0;
                                    //     //! counter.value
                                    //     i < counter.value;
                                    //     i++) {

                                    // }
                                  },
                                );
                                //listTasksControler.add(TextEditingController());
                                //   String textinController = taskController.text;
                                // listTasksControler.add(textinController);
                                //print(listTasksControler);
                                //  String text = taskController.text;
                                //   listTasksControler.add(text);
                                //  print(listTasksControler);
                                //  setState(() {

                                //  storvalue();
                                // print(storvalue());
                                // // print(tasksControler);
                                //  });
                              },
                              child: Icon(Icons.add_circle,
                                  size: 35, color: checkTextColor)),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Container(
                        margin: const EdgeInsets.only(top: 20, bottom: 20),
                        height: 350,
                        child: ValueListenableBuilder(
                          valueListenable: counter,
                          builder: (context, value, child) {
                            //!

                            //   List<TextEditingController> tasksContoller = List.generate(value, (index) => TextEditingController());

                            return ListView.builder(
                              //! Put The Value Immeditly
                              // counter.value
                              itemCount: value,

                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(
                                      top: 15, bottom: 15),
                                  child: Dismissible(
                                    direction: DismissDirection.startToEnd,
                                    key: GlobalKey(),
                                    background: Container(
                                      color: deletContanierColor,
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Align(
                                        alignment: FractionalOffset.centerLeft,
                                        child: Icon(
                                          Icons.delete,
                                          color: checkTextColor,
                                        ),
                                      ),
                                    ),
                                    child: Container(
                                      padding: const EdgeInsets.only(
                                          left: 5, top: 14, right: 5),
                                      height: 70,
                                      width: 234,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: backGroundContanierColor),
                                      child: TextFormField(
                                        // onSaved: (newValue) {
                                        //   setState(() {
                                        //     newValue = textinController;
                                        //     tasksControler.add(newValue);
                                        //   });
                                        // },
                                        controller: listTasksControler[index],
                                        // tasksContoller[index],
                                        decoration: InputDecoration(
                                            filled: true,
                                            fillColor: checkTextColor,
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            hintText: TASKNAME,
                                            hintStyle: hintTextStyle),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        )),
                  ),
                  Flexible(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                          top: 10,
                        ),
                        child: InkWell(
                          onTap: () {
                            print(listTasksControler);
                            final List<CreateTaskModel> taskList =
                                List.generate(
                                    listTasksControler.length,
                                    (index) => CreateTaskModel(
                                        project_id: id_project!,
                                        taskDescription:
                                            listTasksControler[index].text,
                                        taskStatus: "NEW"));

                            context.read<CreateTaskBloc>().add(
                                  CreateTasksEvent(createTasks: taskList),
                                );
                          },
                          child: Container(
                            width: 283,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: buttomColor),
                            child:
                                BlocConsumer<CreateTaskBloc, CreateTaskState>(
                              listener: (context, state) {
                                if (state is SuccessCreateTasksState) {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const SuccessCreateProject(),
                                  ));
                                }
                              },
                              builder: (context, state) {
                                if (state is SuccessCreateTasksState) {
                                  return Center(
                                    child: Text(
                                      CREATE,
                                      style: textButtomStyle,
                                    ),
                                  );
                                } else if (state is ErrorCreateTasksState) {
                                  return const Text("there is an Error");
                                } else if (state is LodingTasksState) {
                                  return const CircularProgressIndicator();
                                } else if (state is CreateTaskInitial) {
                                  return Center(
                                    child: Text(
                                      CREATE,
                                      style: textButtomStyle,
                                    ),
                                  );
                                } else {
                                  return const SizedBox();
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
