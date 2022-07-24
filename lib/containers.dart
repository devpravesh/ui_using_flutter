import 'package:flutter/material.dart';

class ScrollPage extends StatelessWidget {
  const ScrollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Item 1',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Item 2',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Item 3',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Item 4',
            style: TextStyle(fontSize: 18, color: Colors.white),
          )),
        ),
      ],
    );
  }
}
