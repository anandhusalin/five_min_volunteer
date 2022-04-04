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
                    color: Colors.amber,
                    child: Center(
                        child: Column(
                      children: [
                        Text(service!.data![0][index].taskTitle.toString()),
                        Text(service!.data![0][index].id.toString())
                      ],
                    )));
              }),
            ),
          );
  }
}
