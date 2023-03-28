// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/job.dart';
import 'compact_item.dart';

class JobList extends StatelessWidget {
  List<Job> jobs;
  JobList(this.jobs);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: this.jobs.length,
      itemBuilder: (context, index) => CompactItemJob(this.jobs[index]),
    );
  }
}
