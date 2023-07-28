import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iphone_note/screens/notes/create_update_note.dart';
import 'package:iphone_note/screens/notes/notes_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color(0xffE5E5E5),
        height: 80,
        child: Row(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.folderPlus,
                  color: Colors.yellow.shade700,
                )),
            const Spacer(),
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
                ))
          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5E5E5),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              "Edit",
              style: TextStyle(
                fontSize: 17,
                color: Colors.yellow.shade700,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(color: Color(0xffE5E5E5)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Folders",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
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
                          fillColor: Colors.grey[350],
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  "   iCloud",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const NotesView();
                        },
                      ),
                    );
                  },
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Color(0xffF9F9F9),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.folderClosed,
                              color: Colors.yellow.shade700,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Notes",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const Spacer(),
                            Text("13"),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Colors.grey[500],
                            )
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Icon(
                              FontAwesomeIcons.trashCan,
                              color: Colors.yellow.shade700,
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            const Text(
                              "Recently deleted",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            const Spacer(),
                            Text("1"),
                            const SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Colors.grey[500],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
