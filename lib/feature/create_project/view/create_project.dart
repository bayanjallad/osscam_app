import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:osscam_app/core/constants/color_palet.dart';
import 'package:osscam_app/core/constants/app_string.dart';
import 'package:osscam_app/models/request/createProject_model.dart';
import '../../../core/constants/app_style.dart';
import '../../create_task/view/create_task_page.dart';
import '../bloc/create_project_bloc.dart';

// ignore: must_be_immutable, camel_case_types
class createProject extends StatelessWidget {
  createProject({super.key});
  TextEditingController projectnameController = TextEditingController();
  TextEditingController projectScriptcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateProjectBloc(),
      child: Builder(builder: (context) {
        return Scaffold(
          backgroundColor: backGroundColor,
          body: Padding(
            padding: const EdgeInsets.only(left: 40, top: 5, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/logoo.png"),
                Padding(
                  padding: const EdgeInsets.only(left: 12,  bottom: 10),
                  child: Text(PROJECTNAME, style: textStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, right: 25),
                  child: TextFormField(
                    controller: projectnameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: checkTextColor,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 15, bottom: 10),
                  child: Text(PROJECTSCRIPT, style: textStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20, right: 25),
                  child: TextFormField(
                  maxLength: 2000,  
                  maxLines:17,
                  // style: const TextStyle(height: 20),
                    controller: projectScriptcontroller,
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: checkTextColor,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        hintText:PROJECDESCRIPTION,
                        hintStyle: textDescriptionStyle),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: InkWell(
                      onTap: () {
                        context.read<CreateProjectBloc>().add(
                              CreateNewProjectEvent(
                                projectModel: CreatProjectModel(
                                    projectName: projectnameController.text,
                                    projectDescription:
                                        projectScriptcontroller.text,
                                    projectStatus: "NEW"),
                              ),
                            );
                      },
                      child: Container(
                        margin: const EdgeInsets.only(left: 40),
                        width: 283,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: buttomColor),
                        child: Center(
                          child: BlocConsumer<CreateProjectBloc,
                              CreateProjectState>(
                            listener: (context, state) {
                              if (state is SuccessCreateProjectState) {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => const CreateTask(),
                                ));
                              }
                            },
                            builder: (context, state) {
                              if (state is CreateProjectInitial) {
                                return Text(
                                  CREATE,
                                  style: textButtomStyle,
                                );
                              } else if (state is ErrorInCreateProjectState) {
                                return const Text("there is an Error");
                              } else if (state is SuccessCreateProjectState) {
                                return Text(
                                  SIGNUP,
                                  style: textButtomStyle,
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
        );
      }),
    );
  }
}
