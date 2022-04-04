import 'package:bloc_volunteer_service/core/constant.dart';
import 'package:bloc_volunteer_service/presentaion/widgets/service_list.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widgets.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidgets(title: 'Welcome')),
      body: Column(
        children: [
          ConstSize.kheight2,
          SizedBox(
            height: 30,
          ),
          ServiceList(),
        ],
      ),
    );
  }
}
