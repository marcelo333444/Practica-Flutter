// ignore_for_file: must_be_immutable, override_on_non_overriding_member, deprecated_member_use, unnecessary_this, prefer_const_constructors, avoid_web_libraries_in_flutter, no_logic_in_create_state

import 'dart:js';

import 'package:flutter/material.dart';

import '../models/job.dart';

class ItemJob extends StatefulWidget {
  Job job;
  bool themeDark;

  ItemJob(Job e, {this.job, this.themeDark = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0, bottom: 20.0, top: 20.0),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    _companyLogo(),
                    _favIcon(),
                  ],
                ),
                _infoJobsTexts(),
              ]),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
        color: this.themeDark ? Theme.of(context).primaryColor : Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        // ignore: prefer_const_literals_to_create_immutables
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black45,
            offset: Offset(
              4.0,
              4.0,
            ),
            blurRadius: 10.0,
          )
        ]);
  }

  Widget _companyLogo() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          this.job.company.urlLogo,
          width: 60.0,
        ),
      ),
    );
  }

  Widget _favIcon() {
    return GestureDetector(
      child: Icon(
        this.job.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: this.themeDark ? Colors.white : Colors.grey,
      ),
      onTap: () {},
    );
  }

  Widget _infoJobsTexts() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          this.job.company.name,
          style: TextStyle(
            fontSize: 15.0,
            color: this.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
          ),
        ),
        Text(
          this.job.role,
          style: this.themeDark
              ? Theme.of(context as BuildContext).textTheme.headline3
              : Theme.of(context as BuildContext).textTheme.headline4,
        ),
        SizedBox(
          height: 3.0,
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: Theme.of(context as BuildContext).highlightColor,
              size: 15.0,
            ),
            SizedBox(
              width: 5.0,
            ),
            Text(
              this.job.location,
              style: TextStyle(
                fontSize: 15.0,
                color: this.themeDark ? Color(0XFFB7B7D2) : Colors.grey,
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    throw UnimplementedError();
  }
}
