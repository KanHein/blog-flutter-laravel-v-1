import 'package:blog_app/Service.dart';
import 'package:flutter/material.dart';
import 'Service.dart';
import 'components/components.dart';
class Home extends StatefulWidget {
  Home(this.token);
  final token;
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List articles;
  int art_num;
  Service service;

  Future initialize() async{
    service = Service();
    articles = await service.getArticles(widget.token);
    setState(() {
      art_num = articles.length;
      articles = articles;
    });
  }
  @override

  void initState(){
    initialize();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Blog Page')),
      body: ListView.builder(
          itemCount: (this.art_num == null) ? 0 : art_num,
          itemBuilder: (BuildContext context, int position){
            return Card(
                color: Colors.white,
                elevation: 2.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0, bottom: 10.0),
                      child: Text(
                          articles[position].title,
                        style: kHeaderStyle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0, bottom: 12.0),
                      child: Text(
                          articles[position].body,
                        style: kBodyStyle,
                      ),
                    ),
                    Divider(color: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          kLoveIcon,
                          kCommentIcon,
                          kSaveIcon,
                        ],
                      ),
                    ),
                  ],
                ),
            );
          },
      )
    );
  }
}

