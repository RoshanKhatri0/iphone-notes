import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iphone_note/components/notes_view_item.dart';
import 'package:iphone_note/screens/notes/create_update_note.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.transparent,
        height: 80,
        child: Row(
          children: [
            Spacer(),
            Text("13 Notes"),
            Spacer(),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const CreateOrUpdateNote();
                    },
                  ),
                );
              },
              icon: Icon(
                FontAwesomeIcons.filePen,
                color: Colors.yellow.shade700,
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.yellowAccent[700],
              size: 28,
            )),
        actions: [
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
                value: 'View as Gallery',
                child: Row(
                  children: [
                    Text('View as Gallery'),
                    SizedBox(width: 10),
                    Expanded(
                      child: Icon(
                        Icons.grid_3x3_rounded,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'Select Notes',
                child: Row(
                  children: [
                    Text('Select Notes'),
                    SizedBox(width: 10),
                    Expanded(
                      child: Icon(
                        FontAwesomeIcons.check,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'Sort By',
                child: Row(
                  children: [
                    Text('Sort By'),
                    SizedBox(width: 10),
                    Expanded(
                      child: Icon(
                        FontAwesomeIcons.arrowDownUpAcrossLine,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'Group By Date',
                child: Row(
                  children: [
                    Text('Group By Date'),
                    SizedBox(width: 10),
                    Expanded(
                      child: Icon(
                        FontAwesomeIcons.calendar,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem<String>(
                value: 'View Attachment',
                child: Row(
                  children: [
                    Text('View Attachment'),
                    Expanded(
                      child: Icon(
                        FontAwesomeIcons.paperclip,
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
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Color(0xffE5E5E5)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Notes",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: Autocomplete(
                    optionsBuilder: (textEditingValue) {
                      return [const Iterable.empty()];
                    },
                    onSelected: (option) {},
                    fieldViewBuilder: (context, textEditingController,
                        focusNode, onFieldSubmitted) {
                      return TextFormField(
                        validator: (value) {},
                        focusNode: focusNode,
                        controller: textEditingController,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          hintStyle: TextStyle(fontSize: 16),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[800],
                          ),
                          suffixIcon: Icon(
                            Icons.keyboard_voice,
                            color: Colors.grey[800],
                          ),
                          hintText: "Search",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide: BorderSide.none),
                          filled: true,
                          fillColor: Colors.grey[400],
                        ),
                      );
                    },
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "   Previous 30 Days",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NotesItem(
                                title: "Flutter Intern",
                                body: "7/28/2023 Submit Durean project",
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              NotesItem(
                                title: "Documentation",
                                body: "2/16/2023 Roshan khatri ",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "   June",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NotesItem(
                                title: "Hire Me",
                                body: "7/28/2023 I am a good candidate",
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              NotesItem(
                                title: "Hey dont wait just hire me",
                                body: "2/16/2023 I need this internship ",
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              NotesItem(
                                title: "High Learning Capacity",
                                body: "2/16/2023 Can learn faster ",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "   March",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      child: Container(
                        decoration: const BoxDecoration(
                          color: Color(0xffF9F9F9),
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 12),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              NotesItem(
                                title: "Hire Me",
                                body: "7/28/2023 I am a good candidate",
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              NotesItem(
                                title: "Hey dont wait just hire me",
                                body: "2/16/2023 I need this internship ",
                              ),
                              Divider(
                                thickness: 1,
                                color: Colors.grey,
                              ),
                              NotesItem(
                                title: "High Learning Capacity",
                                body: "2/16/2023 Can learn faster ",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
