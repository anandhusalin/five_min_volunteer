import 'package:bloc_volunteer_service/core/colors/colors.dart';

import 'package:bloc_volunteer_service/model/home_screen_model.dart';
import 'package:bloc_volunteer_service/presentaion/widgets/taskpage.dart';
import 'package:bloc_volunteer_service/services/home_services.dart';
import 'package:flutter/material.dart';

class ServiceList extends StatefulWidget {
  const ServiceList({
    Key? key,
  }) : super(key: key);

  @override
  State<ServiceList> createState() => _ServiceListState();
}

class _ServiceListState extends State<ServiceList> {
  final HomeService homeService = HomeService();
  bool isLoading = true;

  HomeModel? service;
  List joji = [];

  @override
  void initState() {
    super.initState();
    homeService.getData().then((value) {
      print('value');
      print(value);
      setState(() {
        service = value;
        isLoading = false;
        joji = homeService.joji;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const CircularProgressIndicator()
        : GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TaskPage()));
            },
            child: GridView.count(
              primary: false,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(joji.length, (index) {
                return Card(
                  elevation: 0,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 150,
                        width: 150,
                        child: Image.network(
                            service!.data![0][index].image != null
                                ? service!.data![0][index].image.toString()
                                : service!.misc!.imagePlaceholder.toString()),
                      ),
                      Container(
                        height: 30,
                        width: 150,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                            child: Flexible(
                          child: Text(
                            service!.data![0][index].taskTitle.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          ),
                        )),
                      )
                    ],
                  ),
                );
                //  Card(
                //     child: Center(
                //         child: Column(
                //   children: [
                //     Text(service!.data![0][index].taskTitle.toString()),
                //     Text(service!.data![0][index].id.toString()),
                //     // NetworkImage(service!.data![0][index].image.toString()),

                //     SizedBox(
                //       height: 60,
                //       width: 60,
                //       child: Image.network(
                //           service!.data![0][index].image != null
                //               ? service!.data![0][index].image.toString()
                //               : service!.misc!.imagePlaceholder.toString()),
                //     )
                //   ],
                // )));

                //     Flexible(
                //   child: Container(
                //       height: 150,
                //       width: 150,
                //       decoration: BoxDecoration(
                //         image: DecorationImage(
                //           image: NetworkImage(
                //               service!.data![0][index].image != null
                //                   ? service!.data![0][index].image.toString()
                //                   : service!.misc!.imagePlaceholder.toString()),
                //           fit: BoxFit.fill,
                //         ),
                //         borderRadius: BorderRadius.circular(10),
                //       ),
                //       child: Stack(
                //         children: [
                //           Positioned(
                //             child: Container(
                //               height: 45,
                //               width: 150,
                //               decoration: BoxDecoration(
                //                   color: primaryColor,
                //                   borderRadius: BorderRadius.circular(10)),
                //               child: Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceAround,
                //                 children: [
                //                   Flexible(
                //                     child: Text(
                //                       service!.data![0][index].taskTitle
                //                           .toString(),
                //                       style: const TextStyle(
                //                           color: Colors.white,
                //                           fontSize: 14,
                //                           fontWeight: FontWeight.bold),
                //                     ),
                //                   ),
                //                   IconButton(
                //                     onPressed: () {},
                //                     icon: const Icon(
                //                       Icons.arrow_forward,
                //                       color: Colors.white,
                //                     ),
                //                   )
                //                 ],
                //               ),
                //             ),
                //             bottom: 0,
                //           )
                //         ],
                //       )),
                // );
              }),
            ),
          );
  }
}
