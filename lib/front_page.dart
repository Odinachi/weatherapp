import 'package:flutter/material.dart';
import 'package:flutter_weather_icons/flutter_weather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather/weather.dart';

class FrontPage extends StatefulWidget {
  final w;
  final forecast;

  FrontPage({this.w, this.forecast});

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  IconData icon;
  String temprature;
  String day;
  String month;
  String year;
  String windspeed;
  String humidity;
  String hour;
  String minute;
  String description;

  String atemprature;
  String aday;
  String amonth;
  String ayear;
  String awindspeed;
  String ahumidity;
  String ahour;
  String aminute;
  IconData aicon;
  String adescription;

  String btemprature;
  String bday;
  String bmonth;
  String byear;
  String bwindspeed;
  String bhumidity;
  String bhour;
  String bminute;
  IconData bicon;
  String bdescription;

  String ctemprature;
  String cday;
  String cmonth;
  String cyear;
  String cwindspeed;
  String chumidity;
  String chour;
  String cminute;
  IconData cicon;
  String cdescription;

  void assigningValues(dynamic w, dynamic forecast) {
    setState(() {
      try {
        temprature =
            w.temperature.toString().replaceAll(RegExp(r'[^0-9]\.'), '');

        if (w.temperature.fahrenheit < 23.0) {
          icon = WeatherIcons.from0Deg;
        } else if (w.temperature.fahrenheit < 45.0) {
          icon = WeatherIcons.from45Deg;
        } else if (w.temperature.fahrenheit < 68.0) {
          icon = WeatherIcons.from68Deg;
        } else if (w.temperature.fahrenheit < 90.0) {
          icon = WeatherIcons.from90Deg;
        } else if (w.temperature.fahrenheit < 113.0) {
          icon = WeatherIcons.from113Deg;
        } else if (w.temperature.fahrenheit < 158.0) {
          icon = WeatherIcons.from158Deg;
        } else if (w.temperature.fahrenheit < 180.0) {
          icon = WeatherIcons.from180Deg;
        } else if (w.temperature.fahrenheit < 203.0) {
          icon = WeatherIcons.from203Deg;
        } else if (w.temperature.fahrenheit < 225.0) {
          icon = WeatherIcons.from225Deg;
        } else if (w.temperature.fahrenheit < 248.0) {
          icon = WeatherIcons.from248Deg;
        } else if (w.temperature.fahrenheit < 270.0) {
          icon = WeatherIcons.from270Deg;
        } else if (w.temperature.fahrenheit < 293.0) {
          icon = WeatherIcons.from293Deg;
        } else if (w.temperature.fahrenheit < 313.0) {
          icon = WeatherIcons.from313Deg;
        } else {
          icon = WeatherIcons.from336Deg;
        }
        day = w.date.day.toString();
        month = w.date.month.toString();
        year = w.date.year.toString();
        windspeed = w.windSpeed.toString();
        hour = w.date.hour.toString();
        minute = w.date.minute.toString();

        atemprature = forecast[0].temperature.toString();
        aday = forecast[0].date.day.toString();
        amonth = forecast[0].date.month.toString();
        ayear = forecast[0].date.year.toString();
        awindspeed = forecast[0].windSpeed.toString();
        ahumidity = forecast[0].pressure.toString();
        ahour = forecast[0].date.hour.toString();
        aminute = forecast[0].date.minute.toString();
        print(forecast[0]);

        btemprature = forecast[1].temperature.toString();
        bday = forecast[1].date.day.toString();
        bmonth = forecast[1].date.month.toString();
        byear = forecast[1].date.year.toString();
        bwindspeed = forecast[1].windSpeed.toString();
        bhumidity = forecast[1].pressure.toString();
        bhour = forecast[1].date.hour.toString();
        bminute = forecast[1].date.minute.toString();
        print(forecast[1]);

        ctemprature = forecast[2].temperature.toString();
        cday = forecast[2].date.day.toString();
        cmonth = forecast[2].date.month.toString();
        cyear = forecast[2].date.year.toString();
        cwindspeed = forecast[2].windSpeed.toString();
        chumidity = forecast[2].pressure.toString();
        chour = forecast[2].date.hour.toString();
        cminute = forecast[2].date.minute.toString();
        print(forecast[2]);
        print(w);
      } catch (e) {
        print(e);
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    assigningValues(widget.w, widget.forecast);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3B07C),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Icon(FontAwesomeIcons.mapMarkerAlt,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Expanded(
                    flex: 8,
                    child: Text(
                      'Lagos',
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                          color: Colors.black87,
                          // fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: Icon(FontAwesomeIcons.calendarAlt))
                ],
              ),
            ),
            Expanded(
                child: Image.asset(
              "images/e.png",
              height: 200.0,
              width: 200.0,
            )),
            Expanded(
                child: Column(
              children: [
                Text(
                  'dope maybe',
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                      color: Colors.black87,
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Text(
                  '$temprature°',
                  style: GoogleFonts.lobster(
                    textStyle: TextStyle(
                      color: Colors.black87,
                      // fontWeight: FontWeight.bold,
                      fontSize: 70.0,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.wind,
                      size: 20.0,
                    ),
                    Text(
                      "$windspeed km/h",
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Icon(
                      FontAwesomeIcons.tint,
                      size: 20.0,
                    ),
                    Text(
                      "20 %",
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                          color: Colors.black87,
                          fontSize: 8.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
            Expanded(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Expanded(
                        child: BottomWidget(
                      icon: aicon,
                      temprature: atemprature,
                      day: aday,
                      minute: aminute,
                      month: amonth,
                      hour: ahour,
                      year: ayear,
                    )),
                    Expanded(
                        child: BottomWidget(
                      icon: bicon,
                      temprature: btemprature,
                      day: bday,
                      minute: bminute,
                      month: bmonth,
                      hour: bhour,
                      year: byear,
                    )),
                    Expanded(
                        child: BottomWidget(
                      icon: cicon,
                      temprature: ctemprature,
                      day: cday,
                      minute: cminute,
                      month: cmonth,
                      hour: chour,
                      year: cyear,
                    )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  IconData icon;
  String temprature;
  String day;
  String month;
  String year;
  String hour;
  String minute;

  BottomWidget(
      {this.icon,
      this.temprature,
      this.hour,
      this.minute,
      this.day,
      this.month,
      this.year});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0, left: 4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 10.0),
            child: Text(
              "$day/$month/$year",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  color: Colors.black45,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            elevation: 6.0,
            color: Color(0xffFFCCA5),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 8.0, right: 8.0, bottom: 2.0),
                  child: Text(
                    "$hour:$minute",
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
                  child: Icon(WeatherIcons.wiCloud,
                      size: 80.0, color: Colors.white),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0),
                  child: Text(
                    "$temprature°",
                    style: GoogleFonts.lobster(
                      textStyle: TextStyle(
                        color: Colors.black87,
                        fontSize: 30.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
