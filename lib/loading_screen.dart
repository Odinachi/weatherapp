import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:odicast/front_page.dart';
import 'package:weather/weather.dart';

void main() {
  runApp(LoadingPage());
}

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    queryWeather();
    print("got the query in initial state");
  }

  Future<Weather> queryWeather() async {
    WeatherFactory wf = new WeatherFactory("8263c6b6a7c1b02657e1a6e28fb0caab");
    Weather w = await wf.currentWeatherByCityName('lagos');
    print('lagos current weather load up');
    print(w);

    //WeatherFactory wf = new WeatherFactory("8263c6b6a7c1b02657e1a6e28fb0caab");
    List<Weather> forecast = await wf.fiveDayForecastByCityName("lagos");
    print("got fivedays forecast");
    print(forecast);

    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => FrontPage(
                  w: w,
                  forecast: forecast,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFCCA5),
      body: SpinKitWave(
        color: Colors.white,
        size: 100,
      ),
    );
  }
}
