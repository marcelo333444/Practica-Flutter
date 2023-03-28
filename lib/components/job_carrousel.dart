// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_application_1/components/item_job.dart';

import '../models/job.dart';

class JobCarrousel extends StatelessWidget {
  List<Job> jobs;

  JobCarrousel(
    this.jobs,
  );

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
      ),
      items: this
          .jobs
          .map((e) => ItemJob(e, themeDark: jobs.indexOf(e) == 1))
          .toList(),
    );
  }
}
