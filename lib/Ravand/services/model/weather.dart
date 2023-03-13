class Weather {
  //Data Model for the data we want to retrieve
  final double temp_c;
  final String condition;
  final String location;

  Weather(
      {this.temp_c = 0,
      this.location = "",
      this.condition = "//cdn.weatherapi.com/weather/64x64/day/113.png"});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
        temp_c: json['current']['temp_c'],
        condition: json['current']['condition']['icon'],
        location: json['location']['name']);
  }
}
