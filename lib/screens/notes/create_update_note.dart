import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateOrUpdateNote extends StatelessWidget {
  const CreateOrUpdateNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.listCheck,
                    color: Colors.yellow.shade700,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.camera,
                    color: Colors.yellow.shade700,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    FontAwesomeIcons.pen,
                    color: Colors.yellow.shade700,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.ios_share,
                    color: Colors.yellow.shade700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.ios_share,
              color: Colors.yellowAccent[700],
            ),
          ),
          PopupMenuButton<String>(
            icon: Icon(
              FontAwesomeIcons.ellipsis,
              color: Colors.yellowAccent[700],
            ),
            onSelected: (value) {
              Navigator.pushNamed(context, '/' + value.toLowerCase());
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'Lines & Grids',
                child: Row(
                  children: [
                    Text('Lines & Grids'),
                    SizedBox(width: 10),
                    Expanded(
                      child: Icon(
                        Icons.grid_3x3_outlined,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
            offset: const Offset(60, 53),
          ),
        ],
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.yellowAccent[700],
              size: 28,
            )),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
                maxLines: 1,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                decoration: InputDecoration(border: InputBorder.none)),
            TextField(
                keyboardType: TextInputType.multiline,
                maxLines: null,
                decoration: InputDecoration(border: InputBorder.none)),
          ],
        ),
      ),
    );
  }
}
