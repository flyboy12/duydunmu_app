import 'package:duydunmu_app/model/article.dart';
import 'package:duydunmu_app/screen/news_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget NewsListTile(BuildContext context, Article article) {
  return InkWell(
    onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: (context) => NewsDetail(article))),
    child: Container(
      height: 250,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.only(bottom: 10),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            left: 0,
            child: Image.network(
              article.urlToImage ??
                  "https://pbs.twimg.com/media/EUsfKCiWoAEh918.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: Container(
                color: Colors.red,
                width: MediaQuery.of(context).size.width * 0.6,
                child: Text(
                  article.title ?? "Başlık Yok",
                  style: Theme.of(context)
                      .textTheme
                      .headline1!
                      .copyWith(color: Colors.white, fontSize: 20),
                )),
          ),
        ],
      ),
    ),
  );
}
