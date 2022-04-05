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
        : GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: joji.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
            itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TaskPage()));
                  },
                  child: Card(
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
                              child: Text(
                            service!.data![0][index].taskTitle.toString(),
                            style: const TextStyle(
                                color: Colors.white, fontSize: 15),
                          )),
                        )
                      ],
                    ),
                  ),
                ));
  }
}
