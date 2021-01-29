import 'package:flutter/material.dart';
class DashboardPage extends StatefulWidget{
  @override
  DashboardPageState createState() => DashboardPageState();
}

class DashboardPageState extends State<DashboardPage>{
  Color primaryColor = Color.fromRGBO(255, 82, 48, 1);

  @override
  Widget build(BuildContext context){
    var edgeInsets = EdgeInsets.only(left: 25.0, right: 25.0, bottom: 10.0);
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration:BoxDecoration(
                    color: primaryColor,
                    border: Border.all(color: primaryColor)
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 30.0, right: 15.0, left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.arrow_back),
                          color: Colors.black54,
                          iconSize: 30.0,
                          onPressed: (){
                            Navigator.of(context).pop();
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.notifications_none),
                          color: Colors.black54,
                          iconSize: 30.0,
                          onPressed: (){},
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
                  child: Text(
                    'Dashboard',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontWeight: FontWeight.bold,
                      fontSize: 32.0
                    )
                    ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    width: double.infinity,
                    height: 370.0,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: Offset(0.0, 0.3),
                          blurRadius: 15.0
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text(
                                    '25.000 FCFA',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold
                                    )
                                  ),
                                  SizedBox(height: 15.0),
                                  Text(
                                    'Montant disponible',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0
                                    ),
                                  )
                                ],
                              ),
                              IconButton(
                                icon: Icon(Icons.show_chart),
                                onPressed: (){},
                                color: Colors.white,
                                iconSize: 30.0,
                              )
                            ]
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
                  child: Text(
                    'Activités récents',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                SizedBox(height: 25.00),
                Padding(
                  padding: edgeInsets,
              child: Column(
                children: <Widget>[
                  Center(
                    child: Row(
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.purple.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'JO', 
                              style: TextStyle(
                                color: Colors.purple,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Load Activity',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0
                                )
                              ),
                              Text(
                                "Envoie d'argent",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '-2500 FCFA',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Divider(),
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        Material(
                          borderRadius: BorderRadius.circular(100.0),
                          color: Colors.green.withOpacity(0.1),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Text(
                              'MO',
                              style: TextStyle(
                                color: Colors.green,
                                fontSize: 24.0,
                                fontWeight: FontWeight.bold
                              )
                            ),
                          ),
                        ),
                        SizedBox(width: 20.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Load Activity',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0
                                )
                              ),
                              Text(
                                "Reception d'argent",
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.8),
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                          ),
                        ),
                        Text(
                          '+2500 FCFA',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold
                          )
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
