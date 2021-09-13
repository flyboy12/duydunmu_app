import 'package:duydunmu_app/model/article.dart';
import 'package:duydunmu_app/service/api_service.dart';
import 'package:duydunmu_app/widget/news_list_tile.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  ApiService api = ApiService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            title: Text("Duydun Mu ?"),
            centerTitle: true,
          ),
        ],
        body: RefreshIndicator(
          onRefresh: () => api.getArticle(),
          child: FutureBuilder(
            future: api.getArticle(),
            builder:
                (BuildContext context, AsyncSnapshot<List<Article>> snapshot) {
              if (snapshot.hasData) {
                List<Article>? data = snapshot.data;

                return ListView.builder(
                  itemBuilder: (context, i) {
                    return NewsListTile(context, data![i]);
                  },
                  itemCount: data!.length,
                );
              } else if (snapshot.hasError) {
                print(snapshot.error.toString());
                return Text(snapshot.error.toString());
              }
              return Center(child: CircularProgressIndicator());
            },
          ),
        ),
      ),
    );
  }
}
