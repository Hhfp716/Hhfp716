import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movie_moa/constants/colors.dart';
import 'package:substring_highlight/substring_highlight.dart';

class ObjectList extends StatefulWidget {
  ObjectList({Key? key, required this.hintext}) : super(key: key);

  final String hintext;

  @override
  _ObjectListState createState() => _ObjectListState();
}

class _ObjectListState extends State<ObjectList> {
  bool isLoading = false;
  late List<String> autoCompleteData;
  late TextEditingController controller;

  Future fetchAutoCompleteData() async {
    setState(() {
      isLoading = true;
    });
    final String stringData = widget.hintext == "영화 검색"
        ? await rootBundle.loadString("assets/data.json")
        : await rootBundle.loadString("assets/local.json");
    final List<dynamic> json = jsonDecode(stringData);
    final List<String> jsonStringData = json.cast<String>();

    setState(() {
      isLoading = false;
      autoCompleteData = jsonStringData;
    });
  }

  @override
  void initState() {
    super.initState();
    fetchAutoCompleteData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Autocomplete(
                      optionsBuilder: (TextEditingValue textEditingValue) {
                        if (textEditingValue.text.isEmpty) {
                          return const Iterable<String>.empty();
                        } else {
                          return autoCompleteData.where((word) => word
                              .toLowerCase()
                              .contains(textEditingValue.text.toLowerCase()));
                        }
                      },
                      optionsViewBuilder:
                          (context, Function(String) onSelected, options) {
                        return Material(
                            child: ListView.separated(
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            final option = options.elementAt(index);

                            return ListTile(
                              //title: Text(option.toString()),
                              title: SubstringHighlight(
                                text: option.toString(),
                                term: controller.text,
                              ),
                              subtitle: Text(widget.hintext),
                              onTap: () {
                                onSelected(option.toString());
                              },
                            );
                          },
                          separatorBuilder: (context, index) => Divider(),
                          itemCount: options.length,
                        ));
                      },
                      onSelected: (selectedString) {
                        print(selectedString);
                      },
                      fieldViewBuilder:
                          (context, controller, focusNode, onEditingComplete) {
                        this.controller = controller;
                        return TextField(
                          controller: controller,
                          focusNode: focusNode,
                          onEditingComplete: onEditingComplete,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: kGridColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: kGridColor),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: kGridColor),
                            ),
                            hintText: "영화 검색",
                            prefixIcon: Icon(Icons.movie_outlined),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ));
  }
}
