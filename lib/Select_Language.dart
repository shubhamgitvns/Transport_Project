import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String dropdownValue = "one";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 80,
                    child: Image.network(
                        "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAeFBMVEXy8vIAAAD5+fn9/f1sbGz29vZJSUlDQ0NRUVE6OjpgYGBkZGT09PTw8PDl5eXm5ubLy8sbGxvf39/Hx8cuLi69vb3X19cQEBBWVlZycnK1tbUmJiYVFRWvr6/JycmWlpaOjo6GhoZ9fX2jo6MrKys0NDSQkJCdnZ2LD3TQAAAFB0lEQVR4nO2d6ZaiMBBGMRjXEhAFl3Z60V7e/w0nC92CBqFnICae7/6Y0x4M4z0hlVQFNKDHJqAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuQCy0CGPWnyqgeDexyTCyrciGA7vMmWXDcGTZcBzewfBpPrPD/P1OhvOQ2yEc3suQW/rPGAz7AIadAsNegGGnwLAXYNgpMOwFGHYKDHsBhp0Cw16AYafAsBf+15BkhaltkddDQ87iJFslC9buDN4ZUphtN7LKuxwmrfYjfDPk0eRcyt4tWih6ZsiTTbla/xE3K/plyNOD6rssSfYztSHR/HVcfhkyeYmOUiZjKVutxYu3xl0lrwx5JgUD1ZJEhz6Jl3lTJ3plGMouTH8aMin82tSJPhnSQhgdS0bhWHx4auhEnwz5ShiuSu3Yy2BwSB/JUF6Veakd37cYiDDshX81TIRQdnGVLpvus/DJMJCRZneONMQ+xOTRdB6vDMNZ5TJlf8TLl0eaLQL+LJSmcZEaslyuUZtCqV+GAZvL5XbCxLKN8f2hTRd6ZkixXIsOtqcsexmrv5pTfc8Mefpezp4mLb7p1y9DMRQXu7PgZ5tijW+GRGF+XIsQs5m+Rq3ux/PNMJCVKEqTPG1716iHhrIj2xcT/TT8FTDsBRh2Cgx74ReG9UFTxNNWZ3DckCWnyPxGHp2SB5jxVb0wNb2TR2Jds2+j6LQhW6lNJkMv8khWgwdZC0WXDdmzXmBPrxR5NNWHVs2KDhuyRPWg3H+Jq2/m8ag4Mnj2OANmuczhd6q3RpWNQlrI6v46Oop/N43hxllDnss+mhGLpeioNGkQ30q1iJN8fOqQN5zIVUOWLosiBY/kX6OfXIlYISj+krW3gzHWls7kpqGOlRO168JT3Ztakfj8p+d0by5vK7ppyBfr0ujjakQOlSLxXWn06RH5FN86l5OGtBhXIqgq5w+O4pIlLsPL4Ce8kIqq01uKLhrSQn7sj9IsWCgyYm8Xs6CeGceL+rM5aMgDObqeKtO8Xt28hZ9X0zyP9QVdezr3DIlmOnxUkgq1Qh1sDUu1IijVVk6dM9Sx8nq5zfZFkfTP5RTP000p1l7hmiExVfHNr1cqaqfJIChjrVQc1mSSrhkyHSsNB4mdagyLQLQzKzpm+B0rTZ+V5JavTAqvD+os5Ghs5pYhe72Z9elQajpcxFqTolOG351U3/ByOjwfyeq2alwyZF9qoN34NKSHqSkpDFWsNWyYumNIoYokp5v5XnVZWj2pirWn8LIXnTEkPRt8NSS0pJLCpWE2CYpYeynjjCErrrKmPSXipiWPOqKv8sth7IqhXpW9Xl1j15C6ydSY94amSOWI4Xe0b9OagrqkkELDbOOGISuyo3bNdantusYoBqkh1jphyPMbqy4DFMkMeWTqxYsMOXDDkNJzlaIdPJJJ4cTwMAJxGWs3pTulXDDkX7eyHyNc1RgTQxOdfZXujXbCUISZ7S9/5ZtHBxFsjAt0mUGX7iR2wVCMw6zN0y8VeLSvqSJSkJWzLycMb+yD1kP1bSp7p24Y9gkMewGGnQLDXoBhp8CwF2DYKTDsBRh2Cgx7AYadAsNegGGnwLAX9Pd5MzuEuzsZroeW2K3vZGgV64bqgWWbzGz/NgKl26lFPraNj7R3r2j1N0pC+79REvxyGwYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAI/CX646W+KvnCjEAAAAAElFTkSuQmCC"))
              ],
            ),
            const Text(
              'Please Select Your Language',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 200,
              child: Text(
                'You can change the language at any time',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.indigo, width: 2),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButton<String>(
                        value: dropdownValue,

                        // icon: const Icon(Icons.menu,color: Colors.grey,),
                        items: [
                          DropdownMenuItem<String>(
                            value: "one",
                            child: Text("one"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Two",
                            child: Text("Two"),
                          ),
                          DropdownMenuItem<String>(
                            value: "Three",
                            child: Text("Three"),
                          ),
                        ],
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        }),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                InkWell(
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(color: Colors.indigo),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),

                      ),

                    ),

                  ),
                  onTap: (){
                    Navigator.pushNamed(context, '/Verify_Number_Page');
                  },
                )
              ],
            ),
          ],
        ),
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
