import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var data = [];
  @override
  void initState() {
    super.initState();
    data.add({"nama": "Danis", "alamat": "Tangerang"});
    data.add({"nama": "Rifky", "alamat": "Tangerang"});
    data.add({"nama": "Habil", "alamat": "Tangerang"});
    data.add({"nama": "Lejar", "alamat": "Tangerang"});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: ListView.separated(
        padding: EdgeInsets.only(left: 10, right: 10),
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 1),
                    blurRadius: 10,
                  ),
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama: ${data[index]["nama"]}"),
                Text("Alamat: ${data[index]["alamat"]}"),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: 10);
        },
        itemCount: data.length,
      ),
    );
  }
}
