import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _filter = TextEditingController();
  FocusNode focusNode = FocusNode();
  String _searchText = "";

  List<String> movieList = [
    '특송',
    '씽2게더',
    '스파이더맨- 노 웨이 홈',
    '하우스 오브 구찌',
    '웨스트 사이드 스토리',
    '경관의 피',
    '청춘적니',
    '킹스맨-퍼스트에이전트'
  ];

  List<String> location = ['평촌', '범계', ' 강남', '종로', '광교'];

  @override
  void dispose() {
    _filter.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      reverse: false,
      child: Column(
        children: <Widget>[
          Container(
              color: Colors.white,
              //padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
              width: 300,
              height: 70,
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: TextField(
                      focusNode: focusNode,
                      autofocus: true,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                      controller: _filter,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey,
                        prefixIcon:
                            Icon(Icons.search, color: Colors.black, size: 20),
                        suffixIcon: focusNode.hasFocus
                            ? IconButton(
                                icon: Icon(
                                  Icons.cancel,
                                  size: 20,
                                  color: Colors.black,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _filter.clear();
                                    _searchText = "";
                                  });
                                },
                              )
                            : Container(),
                        hintText: "검색",
                        labelStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                      ),
                      //onTap: () => focusNode.requestFocus(),
                    ),
                  ),
                  focusNode.hasFocus
                      ? Expanded(
                          child: MaterialButton(
                          onPressed: () {
                            setState(() {
                              _filter.clear();
                              _searchText = "";
                              focusNode.unfocus();
                            });
                          },
                          child: Text(
                            "취소",
                            style: TextStyle(color: Colors.black, fontSize: 12),
                          ),
                        ))
                      : Expanded(flex: 0, child: Container())
                ],
              )),
        ],
      ),
    );
  }
}
