import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:time_planner/time_planner.dart';

class PlannerPage extends StatefulWidget {
  @override
  _PlannerPageState createState() => _PlannerPageState();
}

class _PlannerPageState extends State<PlannerPage> {
  @override
  Widget build(BuildContext context) {
    List<TimePlannerTask> tasks = [
      TimePlannerTask(
        //background colour for task
        color: Colors.purple,
        //day: index of the header, hour: task begin hour, minutes: task begin minutes
        dateTime: TimePlannerDateTime(day: 0, hour: 12, minutes: 30),
        //duration of task in minutes
        minutesDuration: 90,
        //days duration in case of multi day use
        daysDuration: 2,
        onTap: () {},
        child: Text("Life Science",
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 14)),
      ),
      TimePlannerTask(
        //background colour for task
        color: Colors.blue,
        //day: index of the header, hour: task begin hour, minutes: task begin minutes
        dateTime: TimePlannerDateTime(day: 0, hour: 14, minutes: 30),
        //duration of task in minutes
        minutesDuration: 90,
        //days duration in case of multi day use
        daysDuration: 4,
        onTap: () {},
        child: Text("English",
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 14)),
      ),
      TimePlannerTask(
        //background colour for task
        color: Colors.orange,
        //day: index of the header, hour: task begin hour, minutes: task begin minutes
        dateTime: TimePlannerDateTime(day: 2, hour: 11, minutes: 30),
        //duration of task in minutes
        minutesDuration: 90,
        //days duration in case of multi day use
        daysDuration: 3,
        onTap: () {},
        child: Text("Maths",
            style: GoogleFonts.nunito(color: Colors.white, fontSize: 14)),
      )
    ];

    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(30)),
          color: Colors.white),
      //padding: EdgeInsets.all(30),
      child: 
          TimePlanner(
              //planner will start eaxh day at this time
              startHour: 6,
              //planner will end each day at this time
              endHour: 18,
              //headers representing the columns/days
              headers: [
                TimePlannerTitle(
                  date: "9/13/2021",
                  title: "Monday",
                ),
                TimePlannerTitle(
                  date: "9/14/2021",
                  title: "Tuesday",
                ),
                TimePlannerTitle(
                  date: "9/15/2021",
                  title: "Wednesday",
                ),
                TimePlannerTitle(
                  date: "9/16/2021",
                  title: "Thursday",
                ),
                TimePlannerTitle(
                  date: "9/17/2021",
                  title: "Friday",
                ),
                TimePlannerTitle(
                  date: "9/18/2021",
                  title: "Saturday",
                ),
                TimePlannerTitle(
                  date: "9/19/2021",
                  title: "Sunday",
                ),
              ],
              //list of tasks that will be shown on the time planner
              tasks: tasks,
              style: TimePlannerStyle(
                backgroundColor: Colors.white,
                dividerColor: Colors.grey[500],
              )),
       
    );
  }
}
