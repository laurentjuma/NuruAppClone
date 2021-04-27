import 'package:flutter/material.dart';
import 'package:nuru_clone_app/model/post.dart';

class PostItem extends StatelessWidget
{
  final Post post;
  PostItem(this.post);

  @override
  Widget build(BuildContext context)
  {
    return new Container
      (
      margin: new EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: new Material
        (
        elevation: 30.0,
        shadowColor: Colors.black54,
        color: Theme.of(context).disabledColor,
        borderRadius: new BorderRadius.circular(6.0),
        child: new Padding
          (
          padding: new EdgeInsets.symmetric(vertical: 6.0),
          child: new ListTile
            (
            // leading: new Image.asset('res/${post.postImg}'),
            leading: new Image.asset('assets/img/login_logo.png'),
            title: new Text(post.postName, style: new TextStyle(fontWeight: FontWeight.w700, fontSize: 20.0)),
            subtitle: new Material
              (
              color: Theme.of(context).accentColor,
              borderRadius: new BorderRadius.circular(8.0),
              child: new Container
                (
                margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 4.0),
                child: new Text
                  (
                    post.price - post.price.truncate() > 0
                        ? '\$${post.price.toStringAsFixed(2)}'
                        : '\$${post.price.truncate()}',
                   ),
              ),
            ),
            trailing: new IconButton
              (
              onPressed: () {},
              icon: new Icon(Icons.delete, color: Theme.of(context).primaryColor),
            ),
          ),
        ),
      ),
    );
  }
}