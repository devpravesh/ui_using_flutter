import 'package:flutter/material.dart';
import 'package:practice/containers.dart';

class HomePage extends StatefulWidget {
  // var
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.amber,
        // toolbarHeight: 80,
        centerTitle: true,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Text(
                  'Current Location',
                  style: TextStyle(fontSize: 11),
                ),
                // IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
                Icon(Icons.arrow_drop_down)
              ],
            ),
            const Text(
              'Mumbai , INDIA',
              style: TextStyle(fontSize: 16),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: CircleAvatar(
                backgroundColor: Colors.white30,
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.notification_add_outlined,
                      color: Colors.white,
                    ))),
          )
        ],
        elevation: 0,
      ),
      // ignore: avoid_returning_null_for_void
      drawer: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            size: 10,
          )),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4.2,
            color: Colors.green,
            child: Stack(children: [
              Container(
                height: MediaQuery.of(context).size.height / 5,
                decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          // size: 10,
                        ),
                        color: Colors.white,
                      ),
                      // Flexible(child: TextField())
                      const VerticalDivider(
                        width: 10,
                        indent: 10,
                        endIndent: 120,
                        color: Colors.white,
                      ),
                      const Flexible(
                        child: TextField(
                            decoration: InputDecoration(
                                hintText: 'Search....',
                                hintStyle: TextStyle(color: Colors.white))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: TextButton.icon(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                              // backgroundColor: Colors.green,
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(30.0))),
                            ),
                            onPressed: () {},
                            icon: const CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 15,
                              child: Icon(
                                Icons.filter_list,
                                color: Colors.grey,
                              ),
                            ),
                            label: const Text(
                              'Filter',
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Row(
                  children: [
                    TextButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                          // backgroundColor: Colors.green,
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0))),
                        ),
                        onPressed: () {},
                        icon: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          child: Icon(
                            Icons.filter_list,
                            color: Colors.grey,
                          ),
                        ),
                        label: const Text(
                          'Filter',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ),
            ]),
          ),
          const Flexible(child: ScrollPage()),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3,
          ),
        ],
      ),
    );
  }
}
