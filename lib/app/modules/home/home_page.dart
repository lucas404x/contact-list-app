import 'package:flutter/material.dart';

import 'home_bloc.dart';
import 'home_module.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _homeBloc = HomeModule.to.getBloc<HomeBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: StreamBuilder(
            builder: (_, snapshot) => snapshot.hasData
                ? ListView.builder(
                    itemBuilder: (_, index) => Text(snapshot.data[index].name),
                    itemCount: snapshot.data.length,
                  )
                : CircularProgressIndicator(),
            stream: _homeBloc.contactDataOut),
      ),
    );
  }
}
