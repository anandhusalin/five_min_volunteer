import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../core/colors/colors.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int position = 0;
  List<ListItem> listItem = [
    ListItem(
        isSelected: true, icon: FontAwesomeIcons.home, tiitle: 'Generally'),
    ListItem(
        isSelected: false,
        icon: FontAwesomeIcons.paintRoller,
        tiitle: 'Painting'),
    ListItem(
        isSelected: false,
        icon: FontAwesomeIcons.paintBrush,
        tiitle: 'Cleaning'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.brush, tiitle: 'Repair'),
    ListItem(
        isSelected: false, icon: FontAwesomeIcons.fan, tiitle: 'Temperature'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.tree, tiitle: 'Tree'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.car, tiitle: 'Vechicle'),
    ListItem(isSelected: false, icon: FontAwesomeIcons.dog, tiitle: 'Animal'),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: SizedBox(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listItem.length,
                itemBuilder: (_, index) {
                  return Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          for (int i = 0; i < listItem.length; i++) {
                            setState(() {
                              position = index;
                              if (index == i) {
                                listItem[index].isSelected = true;
                              } else {
                                //the condition to change the highlighted item
                                listItem[i].isSelected = false;
                              }
                            });
                          }
                        },
                        child: Container(
                          width: 82,
                          height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: listItem[index].isSelected
                                ? primaryColor
                                : backgroundColor,
                          ),
                          child: Center(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                Icon(listItem[index].icon),
                                Text(
                                  listItem[index].tiitle,
                                  style: const TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ),
        Visibility(
          child: const Text('reju '),
          // GridView.builder(
          //     gridDelegate:
          //         const SliverGridDelegateWithMaxCrossAxisExtent(
          //       maxCrossAxisExtent: 200,
          //       childAspectRatio: 3 / 2,
          //     ),
          //     itemBuilder: (BuildContext ctx, index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         child: const Text("hai"),
          //       );
          //     }),
          visible: position != -1 && position == 0,
        ),
        Visibility(
            visible: position != -1 && position == 1, child: const Text("bhama")
            // GridView.builder(
            //     gridDelegate:
            //         const SliverGridDelegateWithMaxCrossAxisExtent(
            //             maxCrossAxisExtent: 200,
            //             childAspectRatio: 3 / 2,
            //             crossAxisSpacing: 20,
            //             mainAxisSpacing: 20),
            //     itemBuilder: (BuildContext ctx, index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         child: const Text("hai jk"),
            //       );
            //     }),
            ),
        Visibility(
            visible: position != -1 && position == 2, child: const Text("jk")
            // GridView.builder(
            //     gridDelegate:
            //         const SliverGridDelegateWithMaxCrossAxisExtent(
            //             maxCrossAxisExtent: 200,
            //             childAspectRatio: 3 / 2,
            //             crossAxisSpacing: 20,
            //             mainAxisSpacing: 20),
            //     itemBuilder: (BuildContext ctx, index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         child: Text("hai reju"),
            //       );
            //     }),
            ),
        Visibility(
            visible: position != -1 && position == 3,
            child: const Text("anandhu")
            // GridView.builder(
            //     gridDelegate:
            //         const SliverGridDelegateWithMaxCrossAxisExtent(
            //             maxCrossAxisExtent: 200,
            //             childAspectRatio: 3 / 2,
            //             crossAxisSpacing: 20,
            //             mainAxisSpacing: 20),
            //     itemBuilder: (BuildContext ctx, index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         child: const Text("hai nidhi"),
            //       );
            //     }),
            ),
        Visibility(
            visible: position != -1 && position == 4, child: const Text("net")
            // GridView.builder(
            //     gridDelegate:
            //         const SliverGridDelegateWithMaxCrossAxisExtent(
            //             maxCrossAxisExtent: 200,
            //             childAspectRatio: 3 / 2,
            //             crossAxisSpacing: 20,
            //             mainAxisSpacing: 20),
            //     itemBuilder: (BuildContext ctx, index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         child: const Text("hai k"),
            //       );
            //     }),
            ),
        Visibility(
          visible: position != -1 && position == 5,
          child: const Text("hello"),
          // GridView.builder(
          //     gridDelegate:
          //         const SliverGridDelegateWithMaxCrossAxisExtent(
          //             maxCrossAxisExtent: 200,
          //             childAspectRatio: 3 / 2,
          //             crossAxisSpacing: 20,
          //             mainAxisSpacing: 20),
          //     itemBuilder: (BuildContext ctx, index) {
          //       return Container(
          //         alignment: Alignment.center,
          //         child: const Text("hai anandhu"),
          //       );
          //     }),
        ),
        Visibility(
            visible: position != -1 && position == 6, child: const Text("ammo")
            // GridView.builder(
            //     gridDelegate:
            //         const SliverGridDelegateWithMaxCrossAxisExtent(
            //             maxCrossAxisExtent: 200,
            //             childAspectRatio: 3 / 2,
            //             crossAxisSpacing: 20,
            //             mainAxisSpacing: 20),
            //     itemBuilder: (BuildContext ctx, index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         child: const Text("hai jkk"),
            //       );
            //     }),
            ),
        Visibility(
            visible: position != -1 && position == 7,
            child: const Text("jk king")
            // GridView.builder(
            //     gridDelegate:
            //         const SliverGridDelegateWithMaxCrossAxisExtent(
            //             maxCrossAxisExtent: 200,
            //             childAspectRatio: 3 / 2,
            //             crossAxisSpacing: 20,
            //             mainAxisSpacing: 20),
            //     itemBuilder: (BuildContext ctx, index) {
            //       return Container(
            //         alignment: Alignment.center,
            //         child: const Text("hai  aasw"),
            //       );
            //     }),
            ),
      ],
    );
  }
}

class ListItem {
  String tiitle;
  IconData icon;
  bool isSelected;
  ListItem(
      {required this.icon, required this.tiitle, required this.isSelected});
}
