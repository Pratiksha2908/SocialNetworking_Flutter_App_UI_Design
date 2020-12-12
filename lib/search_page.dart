import 'dart:io';

import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String id = 'search_page';
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  static final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _searchQuery;
  bool _isSearching = false;
  String searchQuery = "Search...";

  @override
  void initState() {
    super.initState();
    _searchQuery = new TextEditingController();
  }

  void _startSearch() {
    print("open search box");
    ModalRoute.of(context).addLocalHistoryEntry(LocalHistoryEntry(onRemove: _stopSearching));
    setState(() {
      _isSearching = true;
    });
  }

  void _stopSearching() {
    _clearSearchQuery();
    setState(() {
      _isSearching = false;
    });
  }

  void _clearSearchQuery() {
    print("close search box");
    setState(() {
      _searchQuery.clear();
      updateSearchQuery("Search...");
    });
  }

  Widget _buildTitle(BuildContext context) {
    var horizontalTitleAlignment =
    Platform.isIOS ? CrossAxisAlignment.center : CrossAxisAlignment.start;

    return InkWell(
      onTap: () => scaffoldKey.currentState.openDrawer(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: horizontalTitleAlignment,
          children: <Widget>[
            const Text('Search for user...', style: TextStyle(color: Color(0xff1565c0), fontSize: 16.0, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchQuery,
      cursorColor: Color(0xff000080),
      cursorWidth: 1.0,
      autofocus: true,
      decoration: const InputDecoration(
        hintText: 'Search...',
        border: InputBorder.none,
        hintStyle: const TextStyle(color: Color(0xff1565c0)),
      ),
      style: const TextStyle(color: Color(0xff000080), fontSize: 16.0),
      onChanged: updateSearchQuery,
    );
  }

  void updateSearchQuery(String newQuery) {
    setState(() {
      searchQuery = newQuery;
    });
    print("search query " + newQuery);
  }

  List<Widget> _buildActions() {

    if (_isSearching) {
      return <Widget>[
        IconButton(
          icon: const Icon(Icons.clear, color: Colors.red,),
          onPressed: () {
            if (_searchQuery == null || _searchQuery.text.isEmpty) {
              Navigator.pop(context);
              return;
            }
            _clearSearchQuery();
          },
        ),
      ];
    }

    return <Widget>[
      IconButton(
        icon: const Icon(Icons.search, color: Color(0xff1565c0),),
        onPressed: _startSearch,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _isSearching ? const BackButton() : null,
        title: _isSearching ? _buildSearchField() : _buildTitle(context),
        actions: _buildActions(),
        //title: Center(child: Text("Search", style: TextStyle(color: Color(0xff000080), fontWeight: FontWeight.bold, fontSize: 18.0),)),
        backgroundColor: Colors.white,
      ),
      key: scaffoldKey,
      body: Container(
        child: GridView.count(
            crossAxisCount: 3,
            childAspectRatio: 1.0,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: <String>[
              'https://wallpapercave.com/wp/e8xnTpf.jpg',
              'https://wallpapercave.com/wp/wp3473585.jpg',
              'https://i.pinimg.com/originals/c5/51/9d/c5519d006ead2da462f4b39373cfa72c.jpg',
              'https://wallpaperaccess.com/full/640204.jpg',
              'https://i.pinimg.com/236x/09/49/2a/09492a5f6fdbf88eab9d4c40db68d72b--dew-drops-rain-drops.jpg',
              'https://www.thewowstyle.com/wp-content/uploads/2015/02/Beautiful-HD-Wallpapers-15.jpg',
              'https://i.pinimg.com/originals/2d/95/e5/2d95e5886fc4c65a6778b5fee94a7d59.jpg',
              'https://wallpapercave.com/wp/wp3021097.jpg',
              'https://cdn.wallpapersafari.com/10/48/IC7Lit.jpg',
              'https://i.pinimg.com/originals/21/3e/ca/213ecafc4897529562abbce18fcaddd7.jpg',
            ].map((String url) {
              return GridTile(
                  child: Image.network(url, fit: BoxFit.cover));
            }).toList()),
            // children: [
            //   Expanded(child: Image.asset('images/family.jpg')),
            //   Expanded(child: Image.asset('images/life.jpg')),
            //   Expanded(child: Image.asset('images/p.jpeg')),
            //   Expanded(child: Image.asset('images/street.jpg')),
            //   Expanded(child: Image.asset('images/wings.jpg')),
            //   Expanded(child: Image.asset('images/world.jpg')),
            // ],
          ),
    );
  }
}
