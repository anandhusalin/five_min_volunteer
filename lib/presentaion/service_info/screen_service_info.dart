import 'package:bloc_volunteer_service/core/colors/colors.dart';
import 'package:flutter/material.dart';

import '../../model/service_info_model.dart';
import '../../services/service_info_service.dart';
import '../widgets/chat.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({Key? key}) : super(key: key);

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  final ServiceInfoService serviceInfoService = ServiceInfoService();
  bool isLoading = true;
  // List<ServiceInfo>? myModels;
  ServiceInfo? service;

  @override
  void initState() {
    super.initState();
    getServiceInfo();
    // serviceInfoService.getServiceInfoData().then((value) {
    //   print('value');
    //   print(value);
    //   setState(() {
    //     service = value;
    //     isLoading = false;
    //     print("service");
    //     print(service);
    //   });
    // });
  }

  getServiceInfo() async {
    service = await ServiceInfoService.getServiceInfoData();
    setState(() {});
    print("service");
    print(service);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: primaryColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Chat()));
            },
            icon: const Icon(
              Icons.chat,
              color: primaryColor,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: primaryColor,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/Servicebnr.jpg'))),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'hai',
                          // service!.data![0][0].taskTitle.toString(),
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: const [
                            Icon(
                              Icons.favorite_border,
                              color: primaryColor,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '0',
                              style: TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 40,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'VOLUNTEER',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )))
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const [
                    //         Text(
                    //           "Task one",
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 14),
                    //         ),
                    //         SizedBox(
                    //           height: 5,
                    //         ),
                    //         Text(
                    //           "Task Two",
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 14),
                    //         ),
                    //         SizedBox(
                    //           height: 5,
                    //         ),
                    //         Text(
                    //           "Task Three",
                    //           style: TextStyle(
                    //               fontWeight: FontWeight.bold, fontSize: 14),
                    //         ),
                    //       ],
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: const [
                    //         Text(
                    //           "Medium ",
                    //           style:
                    //           TextStyle(fontSize: 13, color: Colors.grey),
                    //         ),
                    //         SizedBox(
                    //           height: 5,
                    //         ),
                    //         Text(
                    //           "Low",
                    //           style:
                    //           TextStyle(fontSize: 13, color: Colors.grey),
                    //         ),
                    //         SizedBox(
                    //           height: 5,
                    //         ),
                    //         Text(
                    //           "High",
                    //           style:
                    //           TextStyle(fontSize: 13, color: Colors.grey),
                    //         ),
                    //       ],
                    //     ),
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         const SizedBox(
                    //           height: 5,
                    //         ),
                    //         IconButton(
                    //             onPressed: () {
                    //               Navigator.push(
                    //                   context,
                    //                   MaterialPageRoute(
                    //                       builder: (context) => const Chat()));
                    //             },
                    //             icon: const Icon(
                    //               Icons.chat,
                    //               color: primaryColor,
                    //               size: 35,
                    //             )),
                    //         const SizedBox(
                    //           height: 5,
                    //         ),
                    //       ],
                    //     ),
                    //     const SizedBox()
                    //   ],
                    // ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.lock_clock,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'haii',
                                  // service!.data![0][0].estimatedDate.toString(),
                                  style: TextStyle(color: Colors.black),
                                ),
                                Text(
                                  ' min',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )
                          ],
                        ),
                        height: 70,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Estimated Duration')
                    ],
                  ),
                  // Column(
                  //   children: [
                  //     Container(
                  //       decoration: BoxDecoration(
                  //           border: Border.all(color: Colors.grey),
                  //           borderRadius: BorderRadius.circular(10)),
                  //       child: Column(
                  //         children: [
                  //           const SizedBox(
                  //             height: 10,
                  //           ),
                  //           const Icon(
                  //             Icons.lock_clock,
                  //             color: primaryColor,
                  //           ),
                  //           const SizedBox(
                  //             height: 10,
                  //           ),
                  //           Row(
                  //             mainAxisAlignment: MainAxisAlignment.center,
                  //             children: const [
                  //               Text(
                  //                 '7',
                  //                 style: TextStyle(color: Colors.black),
                  //               ),
                  //               Text(
                  //                 ' min',
                  //                 style: TextStyle(color: Colors.grey),
                  //               ),
                  //             ],
                  //           )
                  //         ],
                  //       ),
                  //       height: 70,
                  //       width: 80,
                  //     ),
                  //     const SizedBox(
                  //       height: 10,
                  //     ),
                  //     const Text('Maintenence')
                  //   ],
                  // ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            const Icon(
                              Icons.home_repair_service,
                              color: primaryColor,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Active',
                                  style: TextStyle(color: Colors.black),
                                ),
                                // Text(
                                //   ' min',
                                //   style: TextStyle(color: Colors.grey),
                                // ),
                              ],
                            )
                          ],
                        ),
                        height: 70,
                        width: 80,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Service Status')
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'hai',
                  // service!.data![0][0].taskDesc.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('images/service4.jpg'))),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'hai',
                  // service!.data![0][0].taskDesc.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
