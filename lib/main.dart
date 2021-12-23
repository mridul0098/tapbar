// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> with SingleTickerProviderStateMixin{
  //late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //_tabController = TabController(length: 3, vsync:this);
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: " appbar",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: DefaultTabController(
length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text("appbar"),
            centerTitle: true,
            elevation: 1000,
            shadowColor: Colors.amber,
            toolbarOpacity: 1,
            toolbarHeight: 100,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            leading: const Icon(Icons.menu),
            actions: [
              const Icon(Icons.favorite_border),
              IconButton(
                  onPressed: () {
                    print("search");
                  },
                  icon: const Icon(Icons.search)),
              const Icon(Icons.more_vert)
            ],
            bottom: TabBar(
              //controller: _tabController,
              tabs: const [
                const Tab(
                  icon: const Icon(Icons.person),
                ),
                Tab(
                  icon: Icon(Icons.travel_explore_sharp),
                ),
                Tab(
                  icon: Icon(Icons.shopping_bag)
                ),
              ],
            ),
      
          ),
          body:TabBarView(
            //controller: _tabController,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
               
                Center(child: Text("person")),
              Center(child: Text("travel")),
              Center(child: Text("shpping")),
            ],
          ),
          bottomNavigationBar:Material(
            color: Colors.green,
            shape:RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight: Radius.circular(30)),
      
            ) ,
            child: TabBar(
              labelColor: Colors.amber,
              unselectedLabelColor: Colors.red,
      
               //controller: _tabController,
               tabs: [
                  const Tab(
                    icon: const Icon(Icons.person),
                  ),
                  Tab(
                    icon: Icon(Icons.travel_explore_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.shopping_bag)
                  ),
               ],
          
            ),
          ) ,
        ),
      ),
    );
  }
}
