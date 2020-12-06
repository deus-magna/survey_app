import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _header = TextStyle(
      color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24.0);
  final _body = TextStyle(
      color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF0C2330),
        body: SafeArea(
          child: Center(
            child: buildContainer(),
          ),
        ));
  }

  Widget buildContainer() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          buildHeader(),
          Expanded(
              child: SizedBox(
            height: 1.0,
          )),
          buildButton(),
          SizedBox(height: 10.0,)
        ],
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Image.asset(
            'assets/images/icon_logo@3x.png',
            width: 250.0,
          ),
          SizedBox(
            width: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 10.0),
            width: MediaQuery.of(context).size.width * 0.83,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                   Text('ENCUESTA DE SATISFACCIÓN', style: _header),
                   Text('Responde esta pequeña encuesta para que podamos mejorar nuestro servicio.', style: _body),
              ],
            ),
          ),
       
        ],
      ),
    );
  }

  Widget buildButton() {
    return ButtonTheme(
      minWidth: 250.0,
      child: RaisedButton(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text('INICIAR'),
        color: Color(0xFFA6CE39),
        textColor: Colors.white,
        shape: StadiumBorder(),
        onPressed: () {},
      ),
    );
  }
}
