import 'package:flutter/material.dart';

class FirstBuild extends StatelessWidget {
  const FirstBuild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          title: Text(
            "appBar1",
            style: TextStyle(color: Colors.white),
          ),
        ),
        SliverAppBar(
            //살짝만 올려도 올라오는 거 snap
            snap: true,
            floating: true,
            pinned: false,
            title: Text("appBar2", style: TextStyle(color: Colors.white)),
            expandedHeight: 250,
            //flexibleSpaceBar대신 컨테이너 넣어도 댐
            flexibleSpace: Container(
                child: Image.network("https://picsum.photos/200/300",
                    fit: BoxFit.cover))),
        SliverList(
          delegate: SliverChildBuilderDelegate((context, index) => ListTile(
                leading: Icon(Icons.person),
                title: Text("$index"),
                trailing: Icon(Icons.account_balance),
              )),
        ),
      ],
    );
  }
}
