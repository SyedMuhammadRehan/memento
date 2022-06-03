import 'package:flutter/material.dart';
import 'package:memento/data/homeitemdata/homeitemdata.dart';
import 'package:memento/domain/model/homeitemmodel.dart';
import 'package:memento/presentaion/resources/colormanager.dart';
import 'package:memento/presentaion/resources/routesmanager.dart';
import 'package:memento/presentaion/resources/sizeconfig.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final List<HomeItems> items = List.from(homeitemslist);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: ColorManager.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                "data",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 500, child: homeitems())
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {
          add();
        },
        backgroundColor: ColorManager.error,
        child: const Icon(
          Icons.add,
        ),
      ),
    );
  }

  Widget homeitems() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routes.taskscreen),
      child: ListView.builder(
          itemCount: homeitemslist.length,
          itemBuilder: (context, index) {
            var itemlist = items[index];
            print(itemlist.title.toString());
            return Container(
                width: getProportionateScreenWidth(17),
                height: getProportionateScreenHeight(60),
                decoration: BoxDecoration(
                    color: itemlist.color.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10)),
                child: (itemlist.icon));
          }),
    );
  }

  int value = 2;

  _addItem() {
    setState(() {
      value = value + 1;
    });
  }

  void add() {
    const newindex = 1;
    HomeItems newitem = HomeItems(
        title: "hy", icon: const Icon(Icons.paid_rounded), color: Colors.amber);
    homeitemslist.add(newitem);
    print(homeitemslist.length);
  }
}
