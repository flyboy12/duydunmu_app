import 'package:duydunmu_app/model/article.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetail extends StatelessWidget {
  final Article article;
  NewsDetail(this.article);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () => launch(article.url!),
              icon: Icon(
                Icons.arrow_circle_up_rounded,
                color: Colors.redAccent,
              )),
        ],
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.red,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(
            article.urlToImage!,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            article.title ?? "a",
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontSize: 18, color: Colors.red),
          ),
          SizedBox(
            height: 10,
          ),
          Text(article.description!),
          SizedBox(
            height: 10,
          ),
          Text(
            "Author : ${article.author}",
            style: Theme.of(context)
                .textTheme
                .headline3!
                .copyWith(fontSize: 12, color: Colors.red),
          ),
        ],
      ),
    );
  }
}
